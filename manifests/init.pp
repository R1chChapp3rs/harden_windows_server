#init.pp
class harden_windows_server (
  #1
  Boolean $ensure_enforce_password_history_is_set_to_24_or_more_passwords = true,
  Boolean $ensure_maximum_password_age_is_set_to_60_or_fewer_days_but_not_0 = true,
  Boolean $ensure_minimum_password_age_is_set_to_1_or_more_days = true,
  Boolean $ensure_minimum_password_length_is_set_to_14_or_more_characters = true,
  Boolean $ensure_password_must_meet_complexity_requirements_is_set_to_enabled = true,
  Boolean $ensure_store_passwords_using_reversible_encryption_is_set_to_disabled = true,
  Boolean $ensure_account_lockout_duration_is_set_to_15_or_more_minutes = true,
  Boolean $ensure_account_lockout_threshold_is_set_to_10_or_fewer_invalid_logon_attempts_but_not_0 = true,
  Boolean $ensure_reset_account_lockout_counter_after_is_set_to_15_or_more_minutes = true,
  #2.2
  Boolean $ensure_access_credential_manager_as_a_trusted_caller_is_set_to_no_one = true,
  Boolean $configure_access_this_computer_from_the_network = true,
  Boolean $ensure_act_as_part_of_the_operating_system_is_set_to_no_one = true,
  Boolean $ensure_add_workstations_to_domain_is_set_to_administrators = true,
  Boolean $ensure_adjust_memory_quotas_for_a_process_is_set_to_administrators_local_service_network_service = true,
  Boolean $configure_allow_log_on_locally = true,
  Boolean $configure_allow_log_on_through_remote_desktop_services = true,
  Boolean $ensure_back_up_files_and_directories_is_set_to_administrators = true,
  Boolean $ensure_change_the_system_time_is_set_to_administrators_local_service = true,
  Boolean $ensure_change_the_time_zone_is_set_to_administrators_local_service = true,
  Boolean $ensure_create_a_pagefile_is_set_to_administrators = true,
  Boolean $ensure_create_a_token_object_is_set_to_no_one = true,
  Boolean $ensure_create_global_objects_is_set_to_administrators_local_service_network_service_service = true,
  Boolean $ensure_create_permanent_shared_objects_is_set_to_no_one = true,
  Boolean $configure_create_symbolic_links = true,
  Boolean $ensure_debug_programs_is_set_to_administrators = true,
  Boolean $configure_deny_access_to_this_computer_from_the_network = true,
  Boolean $ensure_deny_log_on_as_a_batch_job_to_include_guests = true,
  Boolean $ensure_deny_log_on_as_a_service_to_include_guests = true,
  Boolean $ensure_deny_log_on_locally_to_include_guests = true,
  Boolean $ensure_deny_log_on_through_remote_desktop_services_to_include_guests_local_account = true,
  Boolean $configure_enable_computer_and_user_acounts_to_be_trusted_for_delegation = true,
  Boolean $ensure_force_shutdown_from_a_remote_system_is_set_to_administrators = true,
  Boolean $ensure_generate_security_audits_is_set_to_local_service_network_service = true,
  Boolean $configure_impersonate_a_client_after_authentication = true,
  Boolean $ensure_increase_scheduling_priority_is_set_to_administrators = true,
  Boolean $ensure_load_and_unload_device_drivers_is_set_to_administrators = true,
  Boolean $ensure_lock_pages_in_menory_is_set_to_no_one = true,
  Boolean $ensure_log_on_as_a_batch_job_is_set_to_administrators = false, #LEVEL 2
  Boolean $configure_manage_auditing_and_security_log = true,
  Boolean $ensure_modify_an_object_label_is_set_to_no_one = true,
  Boolean $ensure_modify_firmware_environment_values_is_set_to_administrators = true,
  Boolean $ensure_perform_volume_maintenance_tasks_is_set_to_administrators = true,
  Boolean $ensure_profile_single_process_is_set_to_administrators = true,
  Boolean $ensure_profile_system_performance_is_set_to_administrators_nt_service_wdiservicehost = true,
  Boolean $ensure_replace_a_process_level_token_is_set_to_local_service_network_service = true,
  Boolean $ensure_restore_files_and_directories_is_set_to_administrators = true,
  Boolean $ensure_shut_down_the_system_is_set_to_administrators = true,
  Boolean $ensure_synchronize_directory_service_data_is_set_to_no_one = true,
  Boolean $ensure_take_ownership_of_files_or_other_objects_is_set_to_administrators = true,
  #2.3
  ) {

  include harden_windows_server::configure
}
