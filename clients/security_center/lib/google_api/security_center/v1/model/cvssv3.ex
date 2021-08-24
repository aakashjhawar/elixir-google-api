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

defmodule GoogleApi.SecurityCenter.V1.Model.Cvssv3 do
  @moduledoc """
  Common Vulnerability Scoring System version 3.

  ## Attributes

  *   `attackComplexity` (*type:* `String.t`, *default:* `nil`) - This metric describes the conditions beyond the attacker's control that must exist in order to exploit the vulnerability.
  *   `attackVector` (*type:* `String.t`, *default:* `nil`) - Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments. This metric reflects the context by which vulnerability exploitation is possible.
  *   `availabilityImpact` (*type:* `String.t`, *default:* `nil`) - This metric measures the impact to the availability of the impacted component resulting from a successfully exploited vulnerability.
  *   `baseScore` (*type:* `float()`, *default:* `nil`) - The base score is a function of the base metric scores.
  *   `confidentialityImpact` (*type:* `String.t`, *default:* `nil`) - This metric measures the impact to the confidentiality of the information resources managed by a software component due to a successfully exploited vulnerability.
  *   `integrityImpact` (*type:* `String.t`, *default:* `nil`) - This metric measures the impact to integrity of a successfully exploited vulnerability.
  *   `privilegesRequired` (*type:* `String.t`, *default:* `nil`) - This metric describes the level of privileges an attacker must possess before successfully exploiting the vulnerability.
  *   `scope` (*type:* `String.t`, *default:* `nil`) - The Scope metric captures whether a vulnerability in one vulnerable component impacts resources in components beyond its security scope.
  *   `userInteraction` (*type:* `String.t`, *default:* `nil`) - This metric captures the requirement for a human user, other than the attacker, to participate in the successful compromise of the vulnerable component.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attackComplexity => String.t() | nil,
          :attackVector => String.t() | nil,
          :availabilityImpact => String.t() | nil,
          :baseScore => float() | nil,
          :confidentialityImpact => String.t() | nil,
          :integrityImpact => String.t() | nil,
          :privilegesRequired => String.t() | nil,
          :scope => String.t() | nil,
          :userInteraction => String.t() | nil
        }

  field(:attackComplexity)
  field(:attackVector)
  field(:availabilityImpact)
  field(:baseScore)
  field(:confidentialityImpact)
  field(:integrityImpact)
  field(:privilegesRequired)
  field(:scope)
  field(:userInteraction)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.Cvssv3 do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.Cvssv3.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.Cvssv3 do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
