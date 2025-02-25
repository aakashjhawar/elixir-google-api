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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1Settings do
  @moduledoc """
  The settings resource.

  ## Attributes

  *   `analysisConfig` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig.t`, *default:* `nil`) - Default analysis settings.
  *   `conversationTtl` (*type:* `String.t`, *default:* `nil`) - The default TTL for newly-created conversations. If a conversation has a specified expiration, that value will be used instead. Changing this value will not change the expiration of existing conversations. Conversations with no expire time persist until they are deleted.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the settings was created.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - A language code to be applied to each transcript segment unless the segment already specifies a language code. Language code defaults to "en-US" if it is neither specified on the segment nor here.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the settings resource. Format: projects/{project}/locations/{location}/settings
  *   `pubsubNotificationSettings` (*type:* `map()`, *default:* `nil`) - A map that maps a notification trigger to a Pub/Sub topic. Each time a specified trigger occurs, Insights will notify the corresponding Pub/Sub topic. Keys are notification triggers. Supported keys are: * "all-triggers": Notify each time any of the supported triggers occurs. * "create-analysis": Notify each time an analysis is created. * "create-conversation": Notify each time a conversation is created. * "export-insights-data": Notify each time an export is complete. * "update-conversation": Notify each time a conversation is updated via UpdateConversation. Values are Pub/Sub topics. The format of each Pub/Sub topic is: projects/{project}/topics/{topic}
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the settings were last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :analysisConfig =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig.t()
            | nil,
          :conversationTtl => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :languageCode => String.t() | nil,
          :name => String.t() | nil,
          :pubsubNotificationSettings => map() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:analysisConfig,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig
  )

  field(:conversationTtl)
  field(:createTime, as: DateTime)
  field(:languageCode)
  field(:name)
  field(:pubsubNotificationSettings, type: :map)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1Settings do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1Settings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1Settings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
