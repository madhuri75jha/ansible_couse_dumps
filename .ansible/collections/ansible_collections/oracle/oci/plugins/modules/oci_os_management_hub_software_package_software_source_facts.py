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
module: oci_os_management_hub_software_package_software_source_facts
description: >-
    Due to size constraints we have not included the documentation in the module. Please check L(here,
    https://docs.oracle.com/en-us/iaas/tools/oci-ansible-collection/latest/collections/oracle/oci/oci_os_management_hub_software_package_software_source_facts_module.html)
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
    from oci.os_management_hub import SoftwareSourceClient

    HAS_OCI_PY_SDK = True
except ImportError:
    HAS_OCI_PY_SDK = False


class SoftwarePackageSoftwareSourceFactsHelperGen(OCIResourceFactsHelperBase):
    """Supported operations: list"""

    def get_required_params_for_list(self):
        return [
            "software_package_name",
            "compartment_id",
        ]

    def list_resources(self):
        optional_list_method_params = [
            "software_source_type",
            "os_family",
            "arch_type",
            "availability",
            "availability_at_oci",
            "availability_anywhere",
            "display_name",
            "display_name_contains",
            "sort_order",
            "sort_by",
            "lifecycle_state",
        ]
        optional_kwargs = dict(
            (param, self.module.params[param])
            for param in optional_list_method_params
            if self.module.params.get(param) is not None
        )
        return oci_common_utils.list_all_resources(
            self.client.list_software_package_software_sources,
            software_package_name=self.module.params.get("software_package_name"),
            compartment_id=self.module.params.get("compartment_id"),
            **optional_kwargs
        )


SoftwarePackageSoftwareSourceFactsHelperCustom = get_custom_class(
    "SoftwarePackageSoftwareSourceFactsHelperCustom"
)


class ResourceFactsHelper(
    SoftwarePackageSoftwareSourceFactsHelperCustom,
    SoftwarePackageSoftwareSourceFactsHelperGen,
):
    pass


def main():
    module_args = oci_common_utils.get_common_arg_spec()
    module_args.update(
        dict(
            software_package_name=dict(type="str", required=True),
            compartment_id=dict(type="str", required=True),
            software_source_type=dict(
                type="list", elements="str", choices=["VENDOR", "CUSTOM", "VERSIONED"]
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
            arch_type=dict(
                type="list",
                elements="str",
                choices=["X86_64", "AARCH64", "I686", "NOARCH", "SRC"],
            ),
            availability=dict(
                type="list",
                elements="str",
                choices=["AVAILABLE", "SELECTED", "RESTRICTED", "UNAVAILABLE"],
            ),
            availability_at_oci=dict(
                type="list",
                elements="str",
                choices=["AVAILABLE", "SELECTED", "RESTRICTED", "UNAVAILABLE"],
            ),
            availability_anywhere=dict(
                type="list",
                elements="str",
                choices=["AVAILABLE", "SELECTED", "RESTRICTED", "UNAVAILABLE"],
            ),
            display_name=dict(aliases=["name"], type="str"),
            display_name_contains=dict(type="str"),
            sort_order=dict(type="str", choices=["ASC", "DESC"]),
            sort_by=dict(type="str", choices=["timeCreated", "displayName"]),
            lifecycle_state=dict(type="list", elements="str"),
        )
    )

    module = OCIAnsibleModule(argument_spec=module_args)

    if not HAS_OCI_PY_SDK:
        module.fail_json(msg="oci python sdk required for this module.")

    resource_facts_helper = ResourceFactsHelper(
        module=module,
        resource_type="software_package_software_source",
        service_client_class=SoftwareSourceClient,
        namespace="os_management_hub",
    )

    result = []

    if resource_facts_helper.is_list():
        result = resource_facts_helper.list()
    else:
        resource_facts_helper.fail()

    module.exit_json(software_package_software_sources=result)


if __name__ == "__main__":
    main()
