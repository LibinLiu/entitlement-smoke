import sys, os, subprocess, commands, random
import logging
from autotest_lib.client.common_lib import error
from autotest_lib.client.bin import utils
from autotest_lib.client.virt import virt_test_utils, virt_utils
from autotest_lib.client.tests.kvm.tests.ent_utils import ent_utils as eu
from autotest_lib.client.tests.kvm.tests.ent_env import ent_env as ee
from autotest_lib.client.tests.kvm.tests.ent_gui_utils import ent_gui_utils as egu

def run_tc_ID000000_GUI_list_all_objects(test, params, env):

	session, vm = eu().init_session_vm(params, env)
	logging.info("========== Begin of Running Test Case %s ==========" % __name__)

	try:
		try:
			username = ee().get_env(params)["username"]
			password = ee().get_env(params)["password"]
			# open subscription-manager-gui
			egu().open_subscription_manager(session)
			egu().list_objects("main-window")

	# 		# click register button
	# 		egu().click_register_button()
	# 		egu().click_dialog_next_button()
	# 		egu().input_username(username)
	# 		egu().input_password(password)
	# 		egu().click_dialog_register_button()
	# 		egu().click_dialog_subscribe_button()
	# 		egu().click_my_subscriptions_tab()
	# 		if egu().get_my_subscriptions_table_row_count() >= 1:
	# 			logging.info("It's successful to auto subscribe: %s" % egu().get_my_subscriptions_table_my_subscriptions())
	# 		else:
	# 			raise error.TestFail("Test Faild - Failed to list all objects!")
		except Exception, e:
			logging.error(str(e))
			raise error.TestFail("Test Failed - error happened to list all objects:" + str(e))
	finally:
		egu().capture_image("list_all_objects")
		egu().restore_gui_environment(session)
		logging.info("========== End of Running Test Case: %s ==========" % __name__)
