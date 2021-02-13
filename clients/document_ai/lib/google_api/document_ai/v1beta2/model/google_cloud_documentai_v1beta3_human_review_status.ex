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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta3HumanReviewStatus do
  @moduledoc """
  The status of human review on a processed document.

  ## Attributes

  *   `humanReviewOperation` (*type:* `String.t`, *default:* `nil`) - The name of the operation triggered by the processed document. This field is populated only when the [state] is [HUMAN_REVIEW_IN_PROGRESS]. It has the same response type and metadata as the long running operation returned by [ReviewDocument] method.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of human review on the processing request.
  *   `stateMessage` (*type:* `String.t`, *default:* `nil`) - A message providing more details about the human review state.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :humanReviewOperation => String.t(),
          :state => String.t(),
          :stateMessage => String.t()
        }

  field(:humanReviewOperation)
  field(:state)
  field(:stateMessage)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta3HumanReviewStatus do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta3HumanReviewStatus.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta3HumanReviewStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
