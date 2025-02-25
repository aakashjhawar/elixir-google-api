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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.PasswordValidationPolicy do
  @moduledoc """
  Database instance local user password validation policy

  ## Attributes

  *   `complexity` (*type:* `String.t`, *default:* `nil`) - The complexity of the password.
  *   `disallowUsernameSubstring` (*type:* `boolean()`, *default:* `nil`) - Disallow username as a part of the password.
  *   `enablePasswordPolicy` (*type:* `boolean()`, *default:* `nil`) - Whether the password policy is enabled or not.
  *   `minLength` (*type:* `integer()`, *default:* `nil`) - Minimum number of characters allowed.
  *   `passwordChangeInterval` (*type:* `String.t`, *default:* `nil`) - Minimum interval after which the password can be changed. This flag is only supported for PostgreSQL.
  *   `reuseInterval` (*type:* `integer()`, *default:* `nil`) - Number of previous passwords that cannot be reused.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :complexity => String.t() | nil,
          :disallowUsernameSubstring => boolean() | nil,
          :enablePasswordPolicy => boolean() | nil,
          :minLength => integer() | nil,
          :passwordChangeInterval => String.t() | nil,
          :reuseInterval => integer() | nil
        }

  field(:complexity)
  field(:disallowUsernameSubstring)
  field(:enablePasswordPolicy)
  field(:minLength)
  field(:passwordChangeInterval)
  field(:reuseInterval)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.PasswordValidationPolicy do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.PasswordValidationPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.PasswordValidationPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
