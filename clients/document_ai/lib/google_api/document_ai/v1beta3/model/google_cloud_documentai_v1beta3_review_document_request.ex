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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest do
  @moduledoc """
  Request message for review document method.

  ## Attributes

  *   `document` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3Document.t`, *default:* `nil`) - The document that needs human review.
  *   `documentSchema` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentSchema.t`, *default:* `nil`) - The document schema of the human review task.
  *   `enableSchemaValidation` (*type:* `boolean()`, *default:* `nil`) - Whether the validation should be performed on the ad-hoc review request.
  *   `inlineDocument` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3Document.t`, *default:* `nil`) - An inline document proto.
  *   `priority` (*type:* `String.t`, *default:* `nil`) - The priority of the human review task.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3Document.t() | nil,
          :documentSchema =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentSchema.t()
            | nil,
          :enableSchemaValidation => boolean() | nil,
          :inlineDocument =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3Document.t() | nil,
          :priority => String.t() | nil
        }

  field(:document, as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3Document)

  field(:documentSchema,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentSchema
  )

  field(:enableSchemaValidation)

  field(:inlineDocument,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3Document
  )

  field(:priority)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ReviewDocumentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
