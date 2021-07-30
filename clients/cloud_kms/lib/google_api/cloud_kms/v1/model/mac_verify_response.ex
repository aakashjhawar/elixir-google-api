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

defmodule GoogleApi.CloudKMS.V1.Model.MacVerifyResponse do
  @moduledoc """
  Response message for KeyManagementService.MacVerify.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the CryptoKeyVersion used for verification. Check this field to verify that the intended resource was used for verification.
  *   `protectionLevel` (*type:* `String.t`, *default:* `nil`) - The ProtectionLevel of the CryptoKeyVersion used for verification.
  *   `success` (*type:* `boolean()`, *default:* `nil`) - This field indicates whether or not the verification operation for MacVerifyRequest.mac over MacVerifyRequest.data was successful.
  *   `verifiedDataCrc32c` (*type:* `boolean()`, *default:* `nil`) - Integrity verification field. A flag indicating whether MacVerifyRequest.data_crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that MacVerifyRequest.data_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set MacVerifyRequest.data_crc32c but this field is still false, discard the response and perform a limited number of retries.
  *   `verifiedMacCrc32c` (*type:* `boolean()`, *default:* `nil`) - Integrity verification field. A flag indicating whether MacVerifyRequest.mac_crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that MacVerifyRequest.mac_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set MacVerifyRequest.mac_crc32c but this field is still false, discard the response and perform a limited number of retries.
  *   `verifiedSuccessIntegrity` (*type:* `boolean()`, *default:* `nil`) - Integrity verification field. This value is used for the integrity verification of [MacVerifyResponse.success]. If the value of this field contradicts the value of [MacVerifyResponse.success], discard the response and perform a limited number of retries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :protectionLevel => String.t() | nil,
          :success => boolean() | nil,
          :verifiedDataCrc32c => boolean() | nil,
          :verifiedMacCrc32c => boolean() | nil,
          :verifiedSuccessIntegrity => boolean() | nil
        }

  field(:name)
  field(:protectionLevel)
  field(:success)
  field(:verifiedDataCrc32c)
  field(:verifiedMacCrc32c)
  field(:verifiedSuccessIntegrity)
end

defimpl Poison.Decoder, for: GoogleApi.CloudKMS.V1.Model.MacVerifyResponse do
  def decode(value, options) do
    GoogleApi.CloudKMS.V1.Model.MacVerifyResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudKMS.V1.Model.MacVerifyResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
