# -*- coding: utf-8 -*-
"""
Display the number of messages in the msmtp queue.

Configuration parameters:
    queue: The location of the msmtp queue (default ~/.msmtp.queue)
    hide_empty: Should a message be displayed when the queue is empty (default False)
"""
import os
import time


class Py3status:

    queue = "~/.msmtp.queue"
    hide_empty = True

    def queue_count(self, i3s_output_list, i3s_config):
        directory = os.path.expanduser(self.queue)
        num = len([name for name in os.listdir(directory)
                                 if os.path.isfile(os.path.join(directory, name))
                                 and os.path.splitext(name)[-1] == '.mail'])

        full_text = 'msmtpq: %s' % (num)
        color = self.py3.COLOR_BAD

        if num == 0:
            color = self.py3.COLOR_GOOD
            if self.hide_empty:
                full_text = ''

        return {
            'full_text': full_text,
            'cached_until': time.time() + i3s_config['interval'],
            'color': color,
        }
