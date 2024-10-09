#!/usr/bin/python
# Copyright (c) 2020, 2024 Oracle and/or its affiliates.
# This software is made available to you under the terms of the GPL 3.0 license or the Apache 2.0 license.
# GNU General Public License v3.0+ (see COPYING or https://www.gnu.org/licenses/gpl-3.0.txt)
# Apache License v2.0
# See LICENSE.TXT for details.
# GENERATED FILE - DO NOT EDIT - MANUAL CHANGES WILL BE OVERWRITTEN


from __future__ import absolute_import, division, print_function

__metaclass__ = type

ANSIBLE_METADATA = {
    "metadata_version": "1.1",
    "status": ["preview"],
    "supported_by": "community",
}

DOCUMENTATION = """
---
module: oci_os_management_hub_scheduled_job_facts
description: >-
    Due to size constraints we have not included the documentation in the module. Please check L(here,
    https://docs.oracle.com/en-us/iaas/tools/oci-ansible-collection/latest/collections/oracle/oci/oci_os_management_hub_scheduled_job_facts_module.html)
    for the module documentation.
author: Oracle (@oracle)
"""


from ansible_collections.oracle.oci.plugins.module_utils import oci_common_utils
from ansible_collections.oracle.oci.plugins.module_utils.oci_resource_utils import (
    OCIResourceFactsHelperBase,
    get_custom_class,
    OCIAnsibleModule,
)

try:
    from oci.os_management_hub import ScheduledJobClient

    HAS_OCI_PY_SDK = True
except ImportError:
    HAS_OCI_PY_SDK = False


class ScheduledJobFactsHelperGen(OCIResourceFactsHelperBase):
    """Supported operations: get, list"""

    def get_required_params_for_get(self):
        return [
            "scheduled_job_id",
        ]

    def get_required_params_for_list(self):
        return []

    def get_resource(self):
        return oci_common_utils.call_with_backoff(
            self.client.get_scheduled_job,
            scheduled_job_id=self.module.params.get("scheduled_job_id"),
        )

    def list_resources(self):
        optional_list_method_params = [
            "compartment_id",
            "display_name",
            "display_name_contains",
            "lifecycle_state",
            "managed_instance_id",
            "managed_instance_group_id",
            "managed_compartment_id",
            "lifecycle_stage_id",
            "operation_type",
            "schedule_type",
            "time_start",
            "time_end",
            "sort_order",
            "sort_by",
            "is_restricted",
            "compartment_id_in_subtree",
            "location",
            "location_not_equal_to",
            "is_managed_by_autonomous_linux",
        ]
        optional_kwargs = dict(
            (param, self.module.params[param])
            for param in optional_list_method_params
            if self.module.params.get(param) is not None
        )
        return oci_common_utils.list_all_resources(
            self.client.list_scheduled_jobs, **optional_kwargs
        )


ScheduledJobFactsHelperCustom = get_custom_class("ScheduledJobFactsHelperCustom")


class ResourceFactsHelper(ScheduledJobFactsHelperCustom, ScheduledJobFactsHelperGen):
    pass


def main():
    module_args = oci_common_utils.get_common_arg_spec()
    module_args.update(
        dict(
            scheduled_job_id=dict(aliases=["id"], type="str"),
            compartment_id=dict(type="str"),
            display_name=dict(aliases=["name"], type="str"),
            display_name_contains=dict(type="str"),
            lifecycle_state=dict(
                type="str",
                choices=[
                    "CREATING",
                    "UPDATING",
                    "ACTIVE",
                    "INACTIVE",
                    "DELETING",
                    "DELETED",
                    "FAILED",
                ],
            ),
            managed_instance_id=dict(type="str"),
            managed_instance_group_id=dict(type="str"),
            managed_compartment_id=dict(type="str"),
            lifecycle_stage_id=dict(type="str"),
            operation_type=dict(
                type="str",
                choices=[
                    "INSTALL_PACKAGES",
                    "UPDATE_PACKAGES",
                    "REMOVE_PACKAGES",
                    "UPDATE_ALL",
                    "UPDATE_SECURITY",
                    "UPDATE_BUGFIX",
                    "UPDATE_ENHANCEMENT",
                    "UPDATE_OTHER",
                    "UPDATE_KSPLICE_USERSPACE",
                    "UPDATE_KSPLICE_KERNEL",
                    "MANAGE_MODULE_STREAMS",
                    "SWITCH_MODULE_STREAM",
                    "ATTACH_SOFTWARE_SOURCES",
                    "DETACH_SOFTWARE_SOURCES",
                    "SYNC_MANAGEMENT_STATION_MIRROR",
                    "PROMOTE_LIFECYCLE",
                    "INSTALL_WINDOWS_UPDATES",
                    "INSTALL_ALL_WINDOWS_UPDATES",
                    "INSTALL_SECURITY_WINDOWS_UPDATES",
                    "INSTALL_BUGFIX_WINDOWS_UPDATES",
                    "INSTALL_ENHANCEMENT_WINDOWS_UPDATES",
                    "INSTALL_OTHER_WINDOWS_UPDATES",
                ],
            ),
            schedule_type=dict(type="str", choices=["ONETIME", "RECURRING"]),
            time_start=dict(type="str"),
            time_end=dict(type="str"),
            sort_order=dict(type="str", choices=["ASC", "DESC"]),
            sort_by=dict(type="str", choices=["timeCreated", "displayName"]),
            is_restricted=dict(type="bool"),
            compartment_id_in_subtree=dict(type="bool"),
            location=dict(
                type="list",
                elements="str",
                choices=["ON_PREMISE", "OCI_COMPUTE", "AZURE", "EC2", "GCP"],
            ),
            location_not_equal_to=dict(
                type="list",
                elements="str",
                choices=["ON_PREMISE", "OCI_COMPUTE", "AZURE", "EC2", "GCP"],
            ),
            is_managed_by_autonomous_linux=dict(type="bool"),
        )
    )

    module = OCIAnsibleModule(argument_spec=module_args)

    if not HAS_OCI_PY_SDK:
        module.fail_json(msg="oci python sdk required for this module.")

    resource_facts_helper = ResourceFactsHelper(
        module=module,
        resource_type="scheduled_job",
        service_client_class=ScheduledJobClient,
        namespace="os_management_hub",
    )

    result = []

    if resource_facts_helper.is_get():
        result = [resource_facts_helper.get()]
    elif resource_facts_helper.is_list():
        result = resource_facts_helper.list()
    else:
        resource_facts_helper.fail()

    module.exit_json(scheduled_jobs=result)


if __name__ == "__main__":
    main()
