require 'spec_helper'

exit true if jruby?

require 'shared/adapter'
require 'shared/json_common_adapter'
require 'multi_json/adapters/json_gem'

require 'yajl/json_gem'

describe MultiJson::Adapters::JsonGem, "Yajl compatible" do
  it_behaves_like 'an adapter', described_class
  it_behaves_like 'JSON-like adapter', described_class
end