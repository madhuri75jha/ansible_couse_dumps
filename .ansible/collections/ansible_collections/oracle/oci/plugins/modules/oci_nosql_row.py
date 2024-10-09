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
module: oci_nosql_row
description: >-
    Due to size constraints we have not included the documentation in the module. Please check L(here,
    https://docs.oracle.com/en-us/iaas/tools/oci-ansible-collection/latest/collections/oracle/oci/oci_nosql_row_module.html)
    for the module documentation.
author: Oracle (@oracle)
"""


from ansible_collections.oracle.oci.plugins.module_utils import (
    oci_common_utils,
    oci_wait_utils,
)
from ansible_collections.oracle.oci.plugins.module_utils.oci_resource_utils import (
    OCIResourceHelperBase,
    get_custom_class,
    OCIAnsibleModule,
)

try:
    from oci.nosql import NosqlClient
    from oci.nosql.models import UpdateRowDetails

    HAS_OCI_PY_SDK = True
except ImportError:
    HAS_OCI_PY_SDK = False


class RowHelperGen(OCIResourceHelperBase):
    """Supported operations: update, get and delete"""

    def get_possible_entity_types(self):
        return super(RowHelperGen, self).get_possible_entity_types() + [
            "row",
            "rows",
            "nosqlrow",
            "nosqlrows",
            "rowresource",
            "rowsresource",
            "nosql",
        ]

    def get_module_resource_id_param(self):
        return "table_name_or_id"

    def get_module_resource_id(self):
        return self.module.params.get("table_name_or_id")

    def get_get_fn(self):
        return self.client.get_row

    def get_resource(self):
        optional_params = [
            "compartment_id",
            "timeout_in_ms",
        ]
        optional_kwargs = dict(
            (param, self.module.params[param])
            for param in optional_params
            if self.module.params.get(param) is not None
        )
        return oci_common_utils.call_with_backoff(
            self.client.get_row,
            table_name_or_id=self.module.params.get("table_name_or_id"),
            key=self.module.params.get("key"),
            **optional_kwargs
        )

    def get_update_model_class(self):
        return UpdateRowDetails

    def update_resource(self):
        update_details = self.get_update_model()
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.update_row,
            call_fn_args=(),
            call_fn_kwargs=dict(
                table_name_or_id=self.module.params.get("table_name_or_id"),
                update_row_details=update_details,
            ),
            waiter_type=oci_wait_utils.NONE_WAITER_KEY,
            operation=oci_common_utils.UPDATE_OPERATION_KEY,
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=self.get_wait_for_states_for_operation(
                oci_common_utils.UPDATE_OPERATION_KEY,
            ),
        )

    def delete_resource(self):
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.delete_row,
            call_fn_args=(),
            call_fn_kwargs=dict(
                table_name_or_id=self.module.params.get("table_name_or_id"),
                key=self.module.params.get("key"),
                compartment_id=self.module.params.get("compartment_id"),
                is_get_return_row=self.module.params.get("is_get_return_row"),
                timeout_in_ms=self.module.params.get("timeout_in_ms"),
            ),
            waiter_type=oci_wait_utils.NONE_WAITER_KEY,
            operation=oci_common_utils.DELETE_OPERATION_KEY,
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=self.get_wait_for_states_for_operation(
                oci_common_utils.DELETE_OPERATION_KEY,
            ),
        )


RowHelperCustom = get_custom_class("RowHelperCustom")


class ResourceHelper(RowHelperCustom, RowHelperGen):
    pass


def main():
    module_args = oci_common_utils.get_common_arg_spec(
        supports_create=False, supports_wait=False
    )
    module_args.update(
        dict(
            value=dict(type="dict"),
            option=dict(type="str", choices=["IF_ABSENT", "IF_PRESENT"]),
            ttl=dict(type="int"),
            is_ttl_use_table_default=dict(type="bool"),
            identity_cache_size=dict(type="int"),
            is_exact_match=dict(type="bool"),
            table_name_or_id=dict(aliases=["id"], type="str", required=True),
            key=dict(type="list", elements="str", no_log=True),
            compartment_id=dict(type="str"),
            is_get_return_row=dict(type="bool"),
            timeout_in_ms=dict(type="int"),
            state=dict(type="str", default="present", choices=["present", "absent"]),
        )
    )

    module = OCIAnsibleModule(argument_spec=module_args, supports_check_mode=True)

    if not HAS_OCI_PY_SDK:
        module.fail_json(msg="oci python sdk required for this module.")

    resource_helper = ResourceHelper(
        module=module,
        resource_type="row",
        service_client_class=NosqlClient,
        namespace="nosql",
    )

    result = dict(changed=False)

    if resource_helper.is_delete():
        result = resource_helper.delete()
    elif resource_helper.is_update():
        result = resource_helper.update()

    module.exit_json(**result)


if __name__ == "__main__":
    main()
