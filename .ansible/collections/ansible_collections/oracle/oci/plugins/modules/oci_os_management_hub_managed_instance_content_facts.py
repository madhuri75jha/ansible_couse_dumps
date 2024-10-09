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
module: oci_os_management_hub_managed_instance_content_facts
description: >-
    Due to size constraints we have not included the documentation in the module. Please check L(here,
    https://docs.oracle.com/en-us/iaas/tools/oci-ansible-collection/latest/collections/oracle/oci/oci_os_management_hub_managed_instance_content_facts_module.html)
    for the module documentation.
author: Oracle (@oracle)
"""


from ansible.module_utils._text import to_bytes
from ansible_collections.oracle.oci.plugins.module_utils import oci_common_utils
from ansible_collections.oracle.oci.plugins.module_utils.oci_resource_utils import (
    OCIResourceFactsHelperBase,
    get_custom_class,
    OCIAnsibleModule,
)

try:
    from oci.os_management_hub import ReportingManagedInstanceClient

    HAS_OCI_PY_SDK = True
except ImportError:
    HAS_OCI_PY_SDK = False


class ManagedInstanceContentFactsHelperGen(OCIResourceFactsHelperBase):
    """Supported operations: get"""

    def get_required_params_for_get(self):
        return [
            "managed_instance_id",
            "vulnerability_type",
        ]

    def get_resource(self):
        optional_get_method_params = [
            "advisory_name",
            "advisory_name_contains",
            "advisory_type",
            "vulnerability_name",
            "vulnerability_name_contains",
            "report_format",
        ]
        optional_kwargs = dict(
            (param, self.module.params[param])
            for param in optional_get_method_params
            if self.module.params.get(param) is not None
        )
        return oci_common_utils.call_with_backoff(
            self.client.get_managed_instance_content,
            managed_instance_id=self.module.params.get("managed_instance_id"),
            vulnerability_type=self.module.params.get("vulnerability_type"),
            **optional_kwargs
        )

    def get(self):
        response = self.get_resource().data
        dest = self.module.params.get("dest")
        chunk_size = oci_common_utils.MEBIBYTE
        with open(to_bytes(dest), "wb") as dest_file:
            for chunk in response.raw.stream(chunk_size, decode_content=True):
                dest_file.write(chunk)
        return None


ManagedInstanceContentFactsHelperCustom = get_custom_class(
    "ManagedInstanceContentFactsHelperCustom"
)


class ResourceFactsHelper(
    ManagedInstanceContentFactsHelperCustom, ManagedInstanceContentFactsHelperGen
):
    pass


def main():
    module_args = oci_common_utils.get_common_arg_spec()
    module_args.update(
        dict(
            dest=dict(type="str", required=True),
            managed_instance_id=dict(aliases=["id"], type="str", required=True),
            vulnerability_type=dict(
                type="list",
                elements="str",
                required=True,
                choices=["SECURITY", "BUGFIX", "ENHANCEMENT", "OTHER", "ALL"],
            ),
            advisory_name=dict(type="list", elements="str"),
            advisory_name_contains=dict(type="str"),
            advisory_type=dict(
                type="list",
                elements="str",
                choices=["SECURITY", "BUGFIX", "ENHANCEMENT"],
            ),
            vulnerability_name=dict(type="list", elements="str"),
            vulnerability_name_contains=dict(type="str"),
            report_format=dict(type="str", choices=["csv", "json", "xml"]),
        )
    )

    module = OCIAnsibleModule(argument_spec=module_args)

    if not HAS_OCI_PY_SDK:
        module.fail_json(msg="oci python sdk required for this module.")

    resource_facts_helper = ResourceFactsHelper(
        module=module,
        resource_type="managed_instance_content",
        service_client_class=ReportingManagedInstanceClient,
        namespace="os_management_hub",
    )

    result = []

    if resource_facts_helper.is_get():
        result = resource_facts_helper.get()
    else:
        resource_facts_helper.fail()

    module.exit_json(managed_instance_content=result)


if __name__ == "__main__":
    main()
