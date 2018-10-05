let g:projectionist_heuristics = {
      \   '*': {
      \     '*.c': {
      \       'alternate': '{}.h',
      \       'type': 'source'
      \     },
      \     '*.h': {
      \       'alternate': '{}.c',
      \       'type': 'header'
      \     },
      \
      \     '*.js': {
      \       'alternate': [
      \         '{dirname}/{basename}.test.js',
      \         '{dirname}/__tests__/{basename}-test.js',
      \         '{dirname}/__tests__/{basename}-mocha.js'
      \       ],
      \       'type': 'source'
      \     },
      \     '*.test.js': {
      \       'alternate': '{basename}.js',
      \       'type': 'test',
      \     },
      \     '**/__tests__/*-mocha.js': {
      \       'alternate': '{dirname}/{basename}.js',
      \       'type': 'test'
      \     },
      \     '**/__tests__/*-test.js': {
      \       'alternate': '{dirname}/{basename}.js',
      \       'type': 'test'
      \     },
      \     'src/*.re': {
      \       'alternate': [
      \         '__tests__/{}_test.re',
      \         'src/{}_test.re',
      \         'src/{}.rei'
      \       ],
      \       'type': 'source'
      \     },
      \     'src/*.rei': {
      \       'alternate': [
      \         'src/{}.re',
      \         '__tests__/{}_test.re',
      \         'src/{}_test.re',
      \       ],
      \       'type': 'header'
      \     },
      \     '__tests__/*_test.re': {
      \       'alternate': [
      \         'src/{}.rei',
      \         'src/{}.re',
      \       ],
      \       'type': 'test'
      \     },
      \      'lib/*.ex': {
      \        'type':      'src',
      \        'alternate': 'test/{}_test.exs'
      \     },
      \     'test/*_test.exs': {
      \        'type': 'test',
      \        'alternate': 'lib/{}.ex'
      \     },
      \      'lib/*.rb': {
      \        'type':      'src',
      \        'alternate': 'spec/{}_spec.rb'
      \     },
      \     'spec/*_spec.rb': {
      \        'type': 'test',
      \        'alternate': 'lib/{}.rb'
      \     },
      \      'features/*.feature': {
      \        'type':      'feature',
      \        'alternate': 'features/step_definitions/{}_steps.rb'
      \     },
      \     'features/step_definitions/*_steps.rb': {
      \        'type': 'test',
      \        'alternate': 'features/{}.feature'
      \     }
      \   }
      \ }
