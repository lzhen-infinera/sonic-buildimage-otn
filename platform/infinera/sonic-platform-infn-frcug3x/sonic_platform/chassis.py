# Description: Module contains the definitions of SONiC platform APIs
# which provide the chassis specific details
#
# Copyright (c) 2024, Infinera
# All rights reserved.
#

try:
    from sonic_platform_base.chassis_base import ChassisBase
    from sonic_platform_base.module_base import ModuleBase
    import os
    import threading

except ImportError as e:
    raise ImportError(str(e) + "- required module not found")


class Chassis(ChassisBase):
    """
    Infinera Platform-specific Chassis class
    """
    def __init__(self):
        ChassisBase.__init__(self)

    def get_supervisor_slot(self):
        return 10

    def get_linecard_slot(self):
        return 1

    def get_my_slot(self):
        return 10

