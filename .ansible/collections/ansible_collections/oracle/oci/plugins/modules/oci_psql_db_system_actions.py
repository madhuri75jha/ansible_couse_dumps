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
module: oci_psql_db_system_actions
description: >-
    Due to size constraints we have not included the documentation in the module. Please check L(here,
    https://docs.oracle.com/en-us/iaas/tools/oci-ansible-collection/latest/collections/oracle/oci/oci_psql_db_system_actions_module.html)
    for the module documentation.
author: Oracle (@oracle)
"""


from ansible_collections.oracle.oci.plugins.module_utils import (
    oci_common_utils,
    oci_wait_utils,
)
from ansible_collections.oracle.oci.plugins.module_utils.oci_resource_utils import (
    OCIActionsHelperBase,
    OCIAnsibleModule,
    get_custom_class,
)

try:
    from oci.psql import PostgresqlClient
    from oci.psql.models import ChangeDbSystemCompartmentDetails
    from oci.psql.models import FailoverDbSystemDetails
    from oci.psql.models import ResetMasterUserPasswordDetails
    from oci.psql.models import RestartDbInstanceInDbSystemDetails
    from oci.psql.models import RestoreDbSystemDetails

    HAS_OCI_PY_SDK = True
except ImportError:
    HAS_OCI_PY_SDK = False


class PsqlDbSystemActionsHelperGen(OCIActionsHelperBase):
    """
    Supported actions:
        change_compartment
        failover
        reset_master_user_password
        restart_db_instance_in
        restore
    """

    @staticmethod
    def get_module_resource_id_param():
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

    def change_compartment(self):
        action_details = oci_common_utils.convert_input_data_to_model_class(
            self.module.params, ChangeDbSystemCompartmentDetails
        )
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.change_db_system_compartment,
            call_fn_args=(),
            call_fn_kwargs=dict(
                db_system_id=self.module.params.get("db_system_id"),
                change_db_system_compartment_details=action_details,
            ),
            waiter_type=oci_wait_utils.WORK_REQUEST_WAITER_KEY,
            operation="{0}_{1}".format(
                self.module.params.get("action").upper(),
                oci_common_utils.ACTION_OPERATION_KEY,
            ),
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=oci_common_utils.get_work_request_completed_states(),
        )

    def failover(self):
        action_details = oci_common_utils.convert_input_data_to_model_class(
            self.module.params, FailoverDbSystemDetails
        )
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.failover_db_system,
            call_fn_args=(),
            call_fn_kwargs=dict(
                db_system_id=self.module.params.get("db_system_id"),
                failover_db_system_details=action_details,
            ),
            waiter_type=oci_wait_utils.WORK_REQUEST_WAITER_KEY,
            operation="{0}_{1}".format(
                self.module.params.get("action").upper(),
                oci_common_utils.ACTION_OPERATION_KEY,
            ),
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=oci_common_utils.get_work_request_completed_states(),
        )

    def reset_master_user_password(self):
        action_details = oci_common_utils.convert_input_data_to_model_class(
            self.module.params, ResetMasterUserPasswordDetails
        )
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.reset_master_user_password,
            call_fn_args=(),
            call_fn_kwargs=dict(
                db_system_id=self.module.params.get("db_system_id"),
                reset_master_user_password_details=action_details,
            ),
            waiter_type=oci_wait_utils.WORK_REQUEST_WAITER_KEY,
            operation="{0}_{1}".format(
                self.module.params.get("action").upper(),
                oci_common_utils.ACTION_OPERATION_KEY,
            ),
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=oci_common_utils.get_work_request_completed_states(),
        )

    def restart_db_instance_in(self):
        action_details = oci_common_utils.convert_input_data_to_model_class(
            self.module.params, RestartDbInstanceInDbSystemDetails
        )
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.restart_db_instance_in_db_system,
            call_fn_args=(),
            call_fn_kwargs=dict(
                db_system_id=self.module.params.get("db_system_id"),
                restart_db_instance_in_db_system_details=action_details,
            ),
            waiter_type=oci_wait_utils.WORK_REQUEST_WAITER_KEY,
            operation="{0}_{1}".format(
                self.module.params.get("action").upper(),
                oci_common_utils.ACTION_OPERATION_KEY,
            ),
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=oci_common_utils.get_work_request_completed_states(),
        )

    def restore(self):
        action_details = oci_common_utils.convert_input_data_to_model_class(
            self.module.params, RestoreDbSystemDetails
        )
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.restore_db_system,
            call_fn_args=(),
            call_fn_kwargs=dict(
                db_system_id=self.module.params.get("db_system_id"),
                restore_db_system_details=action_details,
            ),
            waiter_type=oci_wait_utils.WORK_REQUEST_WAITER_KEY,
            operation="{0}_{1}".format(
                self.module.params.get("action").upper(),
                oci_common_utils.ACTION_OPERATION_KEY,
            ),
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=oci_common_utils.get_work_request_completed_states(),
        )


PsqlDbSystemActionsHelperCustom = get_custom_class("PsqlDbSystemActionsHelperCustom")


class ResourceHelper(PsqlDbSystemActionsHelperCustom, PsqlDbSystemActionsHelperGen):
    pass


def main():
    module_args = oci_common_utils.get_common_arg_spec(
        supports_create=False, supports_wait=True
    )
    module_args.update(
        dict(
            compartment_id=dict(type="str"),
            password_details=dict(
                type="dict",
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
            db_instance_id=dict(type="str"),
            restart_type=dict(type="str", choices=["NORMAL", "NODE_REBOOT"]),
            db_system_id=dict(aliases=["id"], type="str", required=True),
            backup_id=dict(type="str"),
            ad=dict(type="str"),
            action=dict(
                type="str",
                required=True,
                choices=[
                    "change_compartment",
                    "failover",
                    "reset_master_user_password",
                    "restart_db_instance_in",
                    "restore",
                ],
            ),
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

    result = resource_helper.perform_action(module.params.get("action"))

    module.exit_json(**result)


if __name__ == "__main__":
    main()
