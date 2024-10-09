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
module: oci_psql_db_system
description: >-
    Due to size constraints we have not included the documentation in the module. Please check L(here,
    https://docs.oracle.com/en-us/iaas/tools/oci-ansible-collection/latest/collections/oracle/oci/oci_psql_db_system_module.html)
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
    from oci.psql import PostgresqlClient
    from oci.psql.models import CreateDbSystemDetails
    from oci.psql.models import UpdateDbSystemDetails
    from oci.psql.models import PatchDbSystemDetails

    HAS_OCI_PY_SDK = True
except ImportError:
    HAS_OCI_PY_SDK = False


class PsqlDbSystemHelperGen(OCIResourceHelperBase):
    """Supported operations: create, update, patch, get, list and delete"""

    def get_possible_entity_types(self):
        return super(PsqlDbSystemHelperGen, self).get_possible_entity_types() + [
            "dbsystem",
            "dbsystems",
            "psqldbsystem",
            "psqldbsystems",
            "dbsystemresource",
            "dbsystemsresource",
            "psql",
        ]

    def get_module_resource_id_param(self):
        return "db_system_id"

    def get_module_resource_id(self):
        return self.module.params.get("db_system_id")

    def get_get_fn(self):
        return self.client.get_db_system

    def get_resource(self):
        return oci_common_utils.call_with_backoff(
            self.client.get_db_system,
            db_system_id=self.module.params.get("db_system_id"),
        )

    def get_required_kwargs_for_list(self):
        return dict()

    def get_optional_kwargs_for_list(self):
        optional_list_method_params = ["compartment_id", "display_name"]

        return dict(
            (param, self.module.params[param])
            for param in optional_list_method_params
            if self.module.params.get(param) is not None
            and (
                self._use_name_as_identifier()
                or (
                    not self.module.params.get("key_by")
                    or param in self.module.params.get("key_by")
                )
            )
        )

    def list_resources(self):

        required_kwargs = self.get_required_kwargs_for_list()
        optional_kwargs = self.get_optional_kwargs_for_list()
        kwargs = oci_common_utils.merge_dicts(required_kwargs, optional_kwargs)
        return oci_common_utils.list_all_resources(
            self.client.list_db_systems, **kwargs
        )

    def get_create_model_class(self):
        return CreateDbSystemDetails

    def get_exclude_attributes(self):
        return ["instances_details", "credentials"]

    def create_resource(self):
        create_details = self.get_create_model()
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.create_db_system,
            call_fn_args=(),
            call_fn_kwargs=dict(create_db_system_details=create_details,),
            waiter_type=oci_wait_utils.WORK_REQUEST_WAITER_KEY,
            operation=oci_common_utils.CREATE_OPERATION_KEY,
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=oci_common_utils.get_work_request_completed_states(),
        )

    def get_update_model_class(self):
        return UpdateDbSystemDetails

    def update_resource(self):
        update_details = self.get_update_model()
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.update_db_system,
            call_fn_args=(),
            call_fn_kwargs=dict(
                db_system_id=self.module.params.get("db_system_id"),
                update_db_system_details=update_details,
            ),
            waiter_type=oci_wait_utils.WORK_REQUEST_WAITER_KEY,
            operation=oci_common_utils.UPDATE_OPERATION_KEY,
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=oci_common_utils.get_work_request_completed_states(),
        )

    def get_patch_model_class(self):
        return PatchDbSystemDetails

    def patch_resource(self):
        patch_details = self.get_patch_model()
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.patch_db_system,
            call_fn_args=(),
            call_fn_kwargs=dict(
                db_system_id=self.module.params.get("db_system_id"),
                patch_db_system_details=patch_details,
            ),
            waiter_type=oci_wait_utils.WORK_REQUEST_WAITER_KEY,
            operation=oci_common_utils.PATCH_OPERATION_KEY,
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=oci_common_utils.get_work_request_completed_states(),
        )

    def delete_resource(self):
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.delete_db_system,
            call_fn_args=(),
            call_fn_kwargs=dict(db_system_id=self.module.params.get("db_system_id"),),
            waiter_type=oci_wait_utils.WORK_REQUEST_WAITER_KEY,
            operation=oci_common_utils.DELETE_OPERATION_KEY,
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=oci_common_utils.get_work_request_completed_states(),
        )


PsqlDbSystemHelperCustom = get_custom_class("PsqlDbSystemHelperCustom")


class ResourceHelper(PsqlDbSystemHelperCustom, PsqlDbSystemHelperGen):
    pass


def main():
    module_args = oci_common_utils.get_common_arg_spec(
        supports_create=True, supports_wait=True
    )
    module_args.update(
        dict(
            compartment_id=dict(type="str"),
            system_type=dict(type="str"),
            db_version=dict(type="str"),
            config_id=dict(type="str"),
            shape=dict(type="str"),
            instance_ocpu_count=dict(type="int"),
            instance_memory_size_in_gbs=dict(type="int"),
            instance_count=dict(type="int"),
            instances_details=dict(
                type="list",
                elements="dict",
                options=dict(
                    display_name=dict(aliases=["name"], type="str"),
                    description=dict(type="str"),
                    private_ip=dict(type="str"),
                ),
            ),
            credentials=dict(
                type="dict",
                options=dict(
                    username=dict(type="str", required=True),
                    password_details=dict(
                        type="dict",
                        required=True,
                        no_log=False,
                        options=dict(
                            password=dict(type="str", no_log=True),
                            password_type=dict(
                                type="str",
                                required=True,
                                choices=["PLAIN_TEXT", "VAULT_SECRET"],
                            ),
                            secret_id=dict(type="str"),
                            secret_version=dict(type="str", no_log=True),
                        ),
                    ),
                ),
            ),
            network_details=dict(
                type="dict",
                options=dict(
                    subnet_id=dict(type="str", required=True),
                    primary_db_endpoint_private_ip=dict(type="str"),
                    nsg_ids=dict(type="list", elements="str"),
                ),
            ),
            source=dict(
                type="dict",
                options=dict(
                    backup_id=dict(type="str"),
                    is_having_restore_config_overrides=dict(type="bool"),
                    source_type=dict(
                        type="str", required=True, choices=["BACKUP", "NONE"]
                    ),
                ),
            ),
            display_name=dict(aliases=["name"], type="str"),
            description=dict(type="str"),
            db_configuration_params=dict(
                type="dict",
                options=dict(
                    apply_config=dict(type="str", choices=["RESTART", "RELOAD"]),
                    config_id=dict(type="str", required=True),
                ),
            ),
            management_policy=dict(
                type="dict",
                options=dict(
                    maintenance_window_start=dict(type="str"),
                    backup_policy=dict(
                        type="dict",
                        options=dict(
                            days_of_the_week=dict(
                                type="list",
                                elements="str",
                                choices=[
                                    "SUNDAY",
                                    "MONDAY",
                                    "TUESDAY",
                                    "WEDNESDAY",
                                    "THURSDAY",
                                    "FRIDAY",
                                    "SATURDAY",
                                ],
                            ),
                            kind=dict(
                                type="str",
                                required=True,
                                choices=["DAILY", "WEEKLY", "NONE", "MONTHLY"],
                            ),
                            retention_days=dict(type="int"),
                            backup_start=dict(type="str"),
                            days_of_the_month=dict(type="list", elements="int"),
                        ),
                    ),
                ),
            ),
            storage_details=dict(
                type="dict",
                options=dict(
                    system_type=dict(type="str", choices=["OCI_OPTIMIZED_STORAGE"]),
                    is_regionally_durable=dict(type="bool"),
                    availability_domain=dict(type="str"),
                    iops=dict(type="int"),
                ),
            ),
            freeform_tags=dict(type="dict"),
            defined_tags=dict(type="dict"),
            items=dict(
                type="list",
                elements="dict",
                options=dict(
                    _from=dict(type="str"),
                    selected_item=dict(type="str"),
                    position=dict(type="str", choices=["AT", "BEFORE", "AFTER"]),
                    operation=dict(
                        type="str",
                        required=True,
                        choices=[
                            "MOVE",
                            "REMOVE",
                            "REPLACE",
                            "INSERT",
                            "REQUIRE",
                            "MERGE",
                            "PROHIBIT",
                        ],
                    ),
                    selection=dict(type="str", required=True),
                    value=dict(type="dict"),
                ),
            ),
            db_system_id=dict(aliases=["id"], type="str"),
            state=dict(type="str", default="present", choices=["present", "absent"]),
        )
    )

    module = OCIAnsibleModule(argument_spec=module_args, supports_check_mode=True)

    if not HAS_OCI_PY_SDK:
        module.fail_json(msg="oci python sdk required for this module.")

    resource_helper = ResourceHelper(
        module=module,
        resource_type="db_system",
        service_client_class=PostgresqlClient,
        namespace="psql",
    )

    result = dict(changed=False)

    if resource_helper.is_delete_using_name():
        result = resource_helper.delete_using_name()
    elif resource_helper.is_delete():
        result = resource_helper.delete()
    elif resource_helper.is_update_using_name():
        result = resource_helper.update_using_name()
    elif resource_helper.is_update():
        result = resource_helper.update()
    elif resource_helper.is_patch_using_name():
        result = resource_helper.patch_using_name()
    elif resource_helper.is_patch():
        result = resource_helper.patch()
    elif resource_helper.is_create():
        result = resource_helper.create()

    module.exit_json(**result)


if __name__ == "__main__":
    main()
