# Version definitions
$AMPLIFY_VERSION = '1.0.2'
$AMPLIFY_RELEASE_TAG = "v#{$AMPLIFY_VERSION}"

$AWS_SDK_VERSION = '2.13.4'
$OPTIMISTIC_AWS_SDK_VERSION = "~> #{$AWS_SDK_VERSION}"

# Include common tooling
def include_build_tools!
  pod 'SwiftFormat/CLI'
  pod 'SwiftLint'
end

# Include common test dependencies
def include_test_utilities!
  pod 'CwlPreconditionTesting',
    git: 'https://github.com/mattgallagher/CwlPreconditionTesting.git',
    tag: '1.2.0'
  pod 'CwlCatchException',
    git: 'https://github.com/mattgallagher/CwlCatchException.git',
    tag: '1.2.0'
end
