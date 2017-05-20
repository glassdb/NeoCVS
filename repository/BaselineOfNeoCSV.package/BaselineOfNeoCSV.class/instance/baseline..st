baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'Neo-CSV-Core';
        package: 'Neo-CSV-Tests' with: [ spec requires: 'Neo-CSV-Core' ];
        group: 'default' with: #('Neo-CSV-Core' 'Neo-CSV-Tests');
        group: 'Core' with: #('Neo-CSV-Core');
        group: 'Tests' with: #('Neo-CSV-Tests') ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'PharoCompatibility'
          with: [ 
              spec
                loads: #('Core');
                repository:
                    'github://glassdb/PharoCompatibility:master/repository' ];
        yourself.
      spec
        package: 'Neo-CSV-Tests'
          with: [ 
              spec
                requires: #('PharoCompatibility');
                includes: #('Neo-CSV-GemStone-Tests') ];
        package: 'Neo-CSV-GemStone-Tests'
          with: [ spec requires: #('Neo-CSV-Tests') ];
        yourself ]