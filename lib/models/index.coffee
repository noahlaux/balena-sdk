###
Copyright 2016 Balena

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
###

mapValues = require('lodash/mapValues')

modelsTemplate =

	###*
	# @namespace application
	# @memberof balena.models
	###
	application: require('./application')

	###*
	# @namespace device
	# @memberof balena.models
	###
	device: require('./device')

	###*
	# @namespace apiKey
	# @memberof balena.models
	###
	apiKey: require('./api-key').default

	###*
	# @namespace key
	# @memberof balena.models
	###
	key: require('./key')

	###*
	# @namespace os
	# @memberof balena.models
	###
	os: require('./os')

	###*
	# @namespace config
	# @memberof balena.models
	###
	config: require('./config')

	###*
	# @namespace release
	# @memberof balena.models
	###
	release: require('./release')

	###*
	# @namespace service
	# @memberof balena.models
	###
	service: require('./service')

	###*
	# @namespace image
	# @memberof balena.models
	###
	image: require('./image')

	###*
	# @namespace billing
	# @memberof balena.models
	# @description **Note!** The billing methods are available on Balena.io exclusively.
	###
	billing: require('./billing')

module.exports = (deps, opts) ->
	mapValues(modelsTemplate, (v) -> v(deps, opts))
