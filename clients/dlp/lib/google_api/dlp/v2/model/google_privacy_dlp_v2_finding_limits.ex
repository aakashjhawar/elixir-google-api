# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FindingLimits do
  @moduledoc """
  Configuration to control the number of findings returned for inspection. This is not used for de-identification or data profiling. When redacting sensitive data from images, finding limits don't apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don't include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error.

  ## Attributes

  *   `maxFindingsPerInfoType` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeLimit.t)`, *default:* `nil`) - Configuration of findings limit given for specified infoTypes.
  *   `maxFindingsPerItem` (*type:* `integer()`, *default:* `nil`) - Max number of findings that will be returned for each item scanned. When set within `InspectJobConfig`, the maximum returned is 2000 regardless if this is set higher. When set within `InspectContentRequest`, this field is ignored.
  *   `maxFindingsPerRequest` (*type:* `integer()`, *default:* `nil`) - Max number of findings that will be returned per request/job. When set within `InspectContentRequest`, the maximum returned is 2000 regardless if this is set higher.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxFindingsPerInfoType =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeLimit.t()) | nil,
          :maxFindingsPerItem => integer() | nil,
          :maxFindingsPerRequest => integer() | nil
        }

  field(:maxFindingsPerInfoType,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeLimit,
    type: :list
  )

  field(:maxFindingsPerItem)
  field(:maxFindingsPerRequest)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FindingLimits do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FindingLimits.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FindingLimits do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
