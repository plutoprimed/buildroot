################################################################################
#
# python-construct
#
################################################################################

PYTHON_CONSTRUCT_VERSION = 2.10.67
PYTHON_CONSTRUCT_SOURCE = construct-$(PYTHON_CONSTRUCT_VERSION).tar.gz
PYTHON_CONSTRUCT_SITE = https://pypi.python.org/packages/source/c/construct
PYTHON_CONSTRUCT_LICENSE = MIT
PYTHON_CONSTRUCT_SETUP_TYPE = setuptools

HOST_PYTHON_CONSTRUCT_NEEDS_HOST_PYTHON = python3

$(eval $(python-package))
$(eval $(host-python-package))
