from __future__ import print_function
import psutil
import bumblebee.input

class Module(bumblebee.engine.Module):
    def __init__(self, engine, config):
        super(Module, self).__init__(engine, config,
             bumblebee.output.Widget(full_text=self.utilization))

    def utilization(self, widget):
        string = ""
        temps = psutil.sensors_temperatures()
        for name, entries in temps.items():
            for entry in entries:
                if((entry.label or name) == 'CPU'):
                    string += " " + (entry.label or name) + ": "\
                        + str(int(entry.current)) + "°C "
        return string
