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
module: oci_os_management_hub_software_source
description: >-
    Due to size constraints we have not included the documentation in the module. Please check L(here,
    https://docs.oracle.com/en-us/iaas/tools/oci-ansible-collection/latest/collections/oracle/oci/oci_os_management_hub_software_source_module.html)
    for the module documentation.
author: Oracle (@oracle)
"""


from ansible_collections.oracle.oci.plugins.module_utils import (
    oci_common_utils,
    oci_wait_utils,
    oci_config_utils,
)
from ansible_collections.oracle.oci.plugins.module_utils.oci_resource_utils import (
    OCIResourceHelperBase,
    get_custom_class,
    OCIAnsibleModule,
)

try:
    from oci.os_management_hub import WorkRequestClient
    from oci.os_management_hub import SoftwareSourceClient
    from oci.os_management_hub.models import CreateSoftwareSourceDetails
    from oci.os_management_hub.models import UpdateSoftwareSourceDetails

    HAS_OCI_PY_SDK = True
except ImportError:
    HAS_OCI_PY_SDK = False


class SoftwareSourceHelperGen(OCIResourceHelperBase):
    """Supported operations: create, update, get, list and delete"""

    def get_waiter_client(self):
        return oci_config_utils.create_service_client(self.module, WorkRequestClient)

    def get_possible_entity_types(self):
        return super(SoftwareSourceHelperGen, self).get_possible_entity_types() + [
            "softwaresource",
            "softwaresources",
            "osManagementHubsoftwaresource",
            "osManagementHubsoftwaresources",
            "softwaresourceresource",
            "softwaresourcesresource",
            "osmanagementhub",
        ]

    def get_module_resource_id_param(self):
        return "software_source_id"

    def get_module_resource_id(self):
        return self.module.params.get("software_source_id")

    def get_get_fn(self):
        return self.client.get_software_source

    def get_get_model_from_summary_model(self, summary_model):
        return oci_common_utils.call_with_backoff(
            self.client.get_software_source, software_source_id=summary_model.id,
        ).data

    def get_resource(self):
        return oci_common_utils.call_with_backoff(
            self.client.get_software_source,
            software_source_id=self.module.params.get("software_source_id"),
        )

    def get_required_kwargs_for_list(self):
        return dict()

    def get_optional_kwargs_for_list(self):
        optional_list_method_params = (
            ["software_source_id", "display_name"]
            if self._use_name_as_identifier()
            else ["compartment_id", "software_source_id", "display_name"]
        )

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
            self.client.list_software_sources, **kwargs
        )

    def get_create_model_class(self):
        return CreateSoftwareSourceDetails

    def create_resource(self):
        create_details = self.get_create_model()
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.create_software_source,
            call_fn_args=(),
            call_fn_kwargs=dict(create_software_source_details=create_details,),
            waiter_type=oci_wait_utils.WORK_REQUEST_WAITER_KEY,
            operation=oci_common_utils.CREATE_OPERATION_KEY,
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=oci_common_utils.get_work_request_completed_states(),
        )

    def get_update_model_class(self):
        return UpdateSoftwareSourceDetails

    def update_resource(self):
        update_details = self.get_update_model()
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.update_software_source,
            call_fn_args=(),
            call_fn_kwargs=dict(
                software_source_id=self.module.params.get("software_source_id"),
                update_software_source_details=update_details,
            ),
            waiter_type=oci_wait_utils.WORK_REQUEST_WAITER_KEY,
            operation=oci_common_utils.UPDATE_OPERATION_KEY,
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=oci_common_utils.get_work_request_completed_states(),
        )

    def delete_resource(self):
        return oci_wait_utils.call_and_wait(
            call_fn=self.client.delete_software_source,
            call_fn_args=(),
            call_fn_kwargs=dict(
                software_source_id=self.module.params.get("software_source_id"),
            ),
            waiter_type=oci_wait_utils.LIFECYCLE_STATE_WAITER_KEY,
            operation=oci_common_utils.DELETE_OPERATION_KEY,
            waiter_client=self.get_waiter_client(),
            resource_helper=self,
            wait_for_states=self.get_wait_for_states_for_operation(
                oci_common_utils.DELETE_OPERATION_KEY,
            ),
        )


SoftwareSourceHelperCustom = get_custom_class("SoftwareSourceHelperCustom")


class ResourceHelper(SoftwareSourceHelperCustom, SoftwareSourceHelperGen):
    pass


def main():
    module_args = oci_common_utils.get_common_arg_spec(
        supports_create=True, supports_wait=True
    )
    module_args.update(
        dict(
            origin_software_source_id=dict(type="str"),
            software_source_version=dict(type="str"),
            is_created_from_package_list=dict(type="bool"),
            packages=dict(type="list", elements="str"),
            vendor_software_sources=dict(
                type="list",
                elements="dict",
                options=dict(
                    id=dict(type="str", required=True),
                    display_name=dict(aliases=["name"], type="str", required=True),
                ),
            ),
            custom_software_source_filter=dict(
                type="dict",
                options=dict(
                    package_filters=dict(
                        type="list",
                        elements="dict",
                        options=dict(
                            package_name=dict(type="str"),
                            package_name_pattern=dict(type="str"),
                            package_version=dict(type="str"),
                            filter_type=dict(
                                type="str",
                                required=True,
                                choices=["INCLUDE", "EXCLUDE"],
                            ),
                        ),
                    ),
                    module_stream_profile_filters=dict(
                        type="list",
                        elements="dict",
                        options=dict(
                            module_name=dict(type="str", required=True),
                            profile_name=dict(type="str"),
                            stream_name=dict(type="str"),
                            filter_type=dict(
                                type="str",
                                required=True,
                                choices=["INCLUDE", "EXCLUDE"],
                            ),
                        ),
                    ),
                    package_group_filters=dict(
                        type="list",
                        elements="dict",
                        options=dict(
                            package_groups=dict(type="list", elements="str"),
                            filter_type=dict(
                                type="str",
                                required=True,
                                choices=["INCLUDE", "EXCLUDE"],
                            ),
                        ),
                    ),
                ),
            ),
            is_automatically_updated=dict(type="bool"),
            is_auto_resolve_dependencies=dict(type="bool"),
            is_latest_content_only=dict(type="bool"),
            compartment_id=dict(type="str"),
            display_name=dict(aliases=["name"], type="str"),
            description=dict(type="str"),
            software_source_type=dict(
                type="str", choices=["CUSTOM", "VENDOR", "VERSIONED"]
            ),
            freeform_tags=dict(type="dict"),
            defined_tags=dict(type="dict"),
            software_source_id=dict(aliases=["id"], type="str"),
            state=dict(type="str", default="present", choices=["present", "absent"]),
        )
    )

    module = OCIAnsibleModule(argument_spec=module_args, supports_check_mode=True)

    if not HAS_OCI_PY_SDK:
        module.fail_json(msg="oci python sdk required for this module.")

    resource_helper = ResourceHelper(
        module=module,
        resource_type="software_source",
        service_client_class=SoftwareSourceClient,
        namespace="os_management_hub",
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
    elif resource_helper.is_create():
        result = resource_helper.create()

    module.exit_json(**result)


if __name__ == "__main__":
    main()
