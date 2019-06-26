# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Spanner.V1.Model.PartitionOptions do
  @moduledoc """
  Options for a PartitionQueryRequest and
  PartitionReadRequest.

  ## Attributes

  *   `maxPartitions` (*type:* `String.t`, *default:* `nil`) - **Note:** This hint is currently ignored by PartitionQuery and
      PartitionRead requests.

      The desired maximum number of partitions to return.  For example, this may
      be set to the number of workers available.  The default for this option
      is currently 10,000. The maximum value is currently 200,000.  This is only
      a hint.  The actual number of partitions returned may be smaller or larger
      than this maximum count request.
  *   `partitionSizeBytes` (*type:* `String.t`, *default:* `nil`) - **Note:** This hint is currently ignored by PartitionQuery and
      PartitionRead requests.

      The desired data size for each partition generated.  The default for this
      option is currently 1 GiB.  This is only a hint. The actual size of each
      partition may be smaller or larger than this size request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxPartitions => String.t(),
          :partitionSizeBytes => String.t()
        }

  field(:maxPartitions)
  field(:partitionSizeBytes)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.PartitionOptions do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.PartitionOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.PartitionOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
