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
module: oci_os_management_hub_managed_instance_facts
description: >-
    Due to size constraints we have not included the documentation in the module. Please check L(here,
    https://docs.oracle.com/en-us/iaas/tools/oci-ansible-collection/latest/collections/oracle/oci/oci_os_management_hub_managed_instance_facts_module.html)
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
    from oci.os_management_hub import ManagedInstanceClient

    HAS_OCI_PY_SDK = True
except ImportError:
    HAS_OCI_PY_SDK = False


class ManagedInstanceFactsHelperGen(OCIResourceFactsHelperBase):
    """Supported operations: get, list"""

    def get_required_params_for_get(self):
        return [
            "managed_instance_id",
        ]

    def get_required_params_for_list(self):
        return []

    def get_resource(self):
        return oci_common_utils.call_with_backoff(
            self.client.get_managed_instance,
            managed_instance_id=self.module.params.get("managed_instance_id"),
        )

    def list_resources(self):
        optional_list_method_params = [
            "compartment_id",
            "display_name",
            "display_name_contains",
            "managed_instance_id",
            "status",
            "arch_type",
            "os_family",
            "is_management_station",
            "group",
            "group_not_equal_to",
            "lifecycle_stage",
            "lifecycle_stage_not_equal_to",
            "is_attached_to_group_or_lifecycle_stage",
            "software_source_id",
            "advisory_name",
            "lifecycle_environment",
            "lifecycle_environment_not_equal_to",
            "location",
            "location_not_equal_to",
            "profile",
            "profile_not_equal_to",
            "is_profile_attached",
            "is_managed_by_autonomous_linux",
            "sort_order",
            "sort_by",
        ]
        optional_kwargs = dict(
            (param, self.module.params[param])
            for param in optional_list_method_params
            if self.module.params.get(param) is not None
        )
        return oci_common_utils.list_all_resources(
            self.client.list_managed_instances, **optional_kwargs
        )


ManagedInstanceFactsHelperCustom = get_custom_class("ManagedInstanceFactsHelperCustom")


class ResourceFactsHelper(
    ManagedInstanceFactsHelperCustom, ManagedInstanceFactsHelperGen
):
    pass


def main():
    module_args = oci_common_utils.get_common_arg_spec()
    module_args.update(
        dict(
            compartment_id=dict(type="str"),
            display_name=dict(aliases=["name"], type="list", elements="str"),
            display_name_contains=dict(type="str"),
            managed_instance_id=dict(aliases=["id"], type="str"),
            status=dict(
                type="list",
                elements="str",
                choices=[
                    "NORMAL",
                    "UNREACHABLE",
                    "ERROR",
                    "WARNING",
                    "REGISTRATION_ERROR",
                    "DELETING",
                    "ONBOARDING",
                ],
            ),
            arch_type=dict(
                type="list",
                elements="str",
                choices=["X86_64", "AARCH64", "I686", "NOARCH", "SRC"],
            ),
            os_family=dict(
                type="list",
                elements="str",
                choices=[
                    "ORACLE_LINUX_9",
                    "ORACLE_LINUX_8",
                    "ORACLE_LINUX_7",
                    "ORACLE_LINUX_6",
                    "WINDOWS_SERVER_2016",
                    "WINDOWS_SERVER_2019",
                    "WINDOWS_SERVER_2022",
                    "ALL",
                ],
            ),
            is_management_station=dict(type="bool"),
            group=dict(type="str"),
            group_not_equal_to=dict(type="str"),
            lifecycle_stage=dict(type="str"),
            lifecycle_stage_not_equal_to=dict(type="str"),
            is_attached_to_group_or_lifecycle_stage=dict(type="bool"),
            software_source_id=dict(type="str"),
            advisory_name=dict(type="list", elements="str"),
            lifecycle_environment=dict(type="str"),
            lifecycle_environment_not_equal_to=dict(type="str"),
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
            profile=dict(type="list", elements="str"),
            profile_not_equal_to=dict(type="list", elements="str"),
            is_profile_attached=dict(type="bool"),
            is_managed_by_autonomous_linux=dict(type="bool"),
            sort_order=dict(type="str", choices=["ASC", "DESC"]),
            sort_by=dict(type="str", choices=["timeCreated", "displayName"]),
        )
    )

    module = OCIAnsibleModule(argument_spec=module_args)

    if not HAS_OCI_PY_SDK:
        module.fail_json(msg="oci python sdk required for this module.")

    resource_facts_helper = ResourceFactsHelper(
        module=module,
        resource_type="managed_instance",
        service_client_class=ManagedInstanceClient,
        namespace="os_management_hub",
    )

    result = []

    if resource_facts_helper.is_get():
        result = [resource_facts_helper.get()]
    elif resource_facts_helper.is_list():
        result = resource_facts_helper.list()
    else:
        resource_facts_helper.fail()

    module.exit_json(managed_instances=result)


if __name__ == "__main__":
    main()
