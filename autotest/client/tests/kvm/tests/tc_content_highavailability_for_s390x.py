import sys, os, subprocess, commands, random, re
import logging
from autotest_lib.client.common_lib import error
from autotest_lib.client.bin import utils
from autotest_lib.client.virt import virt_test_utils, virt_utils
from autotest_lib.client.tests.kvm.tests.ent_utils import ent_utils as eu
from autotest_lib.client.tests.kvm.tests.ent_prod import ent_prod as ep
from autotest_lib.client.tests.kvm.tests.ent_env import ent_env as ee

def run_tc_content_highavailability_for_s390x(test, params, env):

	session, vm = eu().init_session_vm(params, env)
	logging.info("=========== Begin of Running Test Case: %s ===========" % __name__)

	try:
		try:         
                        # Get and print params of python command for content test
                        eu().cnt_command_params_content(params)

			#[A]Prepare test data			
			content_level = params.get("content_level")
			baseurl = params.get("baseurl")
			hostname = params.get("hostname")
			guest_name = params.get("guest_name")

			if ("stage" in hostname):
				if 'RHEL-Server-7' in guest_name:
					username = "stage_ee_test_new"
					password = "redhat"
					sku = "ES0113909"
				else: 
					username = 'stage_ee_test_new'
					password = 'redhat'
					sku = "ES0113909"
			else:
				username = ee.username_qa
				password = ee.password_qa
				sku = "ES0113909"

			productid_cont = '300'

			release_list = params.get('release_list')
			blacklist = params.get("blacklist")

			#[B]Run the test
			(prodsku, basesku) = ep().cnt_get_prodsku_and_basesku(sku)
			ep().cnt_rhel_test(session, vm, username, password, prodsku, basesku, productid_cont, content_level, "", release_list, blacklist)
								 
		except Exception, e:
			logging.error(str(e))
			raise error.TestFail("Test Failed - error happened when do content testing:" + str(e))
	finally:
		logging.info("=========== End of Running Test Case: %s ==========="%__name__)

