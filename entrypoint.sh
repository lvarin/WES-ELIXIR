#!/bin/sh

#
# Copy the TEMPLATE configuration, if none present
#
if [ ! -f /app/cwl_wes/config/app_config.yaml ];
then
  cp /app/cwl_wes/config/app_config-TEMPLATE.yaml /app/cwl_wes/config/app_config.yaml
fi

exec gunicorn --log-level debug -c config.py wsgi:app
