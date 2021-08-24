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

defmodule GoogleApi.AndroidPublisher.V3.Model.InappproductsListResponse do
  @moduledoc """
  Response listing all in-app products.

  ## Attributes

  *   `inappproduct` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.InAppProduct.t)`, *default:* `nil`) - All in-app products.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of this response ("androidpublisher#inappproductsListResponse").
  *   `pageInfo` (*type:* `GoogleApi.AndroidPublisher.V3.Model.PageInfo.t`, *default:* `nil`) - Deprecated and unset.
  *   `tokenPagination` (*type:* `GoogleApi.AndroidPublisher.V3.Model.TokenPagination.t`, *default:* `nil`) - Pagination token, to handle a number of products that is over one page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inappproduct => list(GoogleApi.AndroidPublisher.V3.Model.InAppProduct.t()) | nil,
          :kind => String.t() | nil,
          :pageInfo => GoogleApi.AndroidPublisher.V3.Model.PageInfo.t() | nil,
          :tokenPagination => GoogleApi.AndroidPublisher.V3.Model.TokenPagination.t() | nil
        }

  field(:inappproduct, as: GoogleApi.AndroidPublisher.V3.Model.InAppProduct, type: :list)
  field(:kind)
  field(:pageInfo, as: GoogleApi.AndroidPublisher.V3.Model.PageInfo)
  field(:tokenPagination, as: GoogleApi.AndroidPublisher.V3.Model.TokenPagination)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.InappproductsListResponse do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.InappproductsListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.InappproductsListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
