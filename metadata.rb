name             'xm-demo-cookbook'
maintainer       '10th Magnitude'
maintainer_email 'mstratton@10thmagnitude.com'
license          'Apache 2.0'
description      'Installs/Configures xm-demo-cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
supports 'windows'

depends "windows", "~> 1.11.0"
depends "iis", "~> 1.5.4"
depends "minitest-handler", "~> 1.1.2"
depends "ms_dotnet45"


