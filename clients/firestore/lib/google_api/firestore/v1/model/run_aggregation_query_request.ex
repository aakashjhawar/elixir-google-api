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

defmodule GoogleApi.Firestore.V1.Model.RunAggregationQueryRequest do
  @moduledoc """
  The request for Firestore.RunAggregationQuery.

  ## Attributes

  *   `newTransaction` (*type:* `GoogleApi.Firestore.V1.Model.TransactionOptions.t`, *default:* `nil`) - Starts a new transaction as part of the query, defaulting to read-only. The new transaction ID will be returned as the first response in the stream.
  *   `readTime` (*type:* `DateTime.t`, *default:* `nil`) - Executes the query at the given timestamp. Requires: * Cannot be more than 270 seconds in the past.
  *   `structuredAggregationQuery` (*type:* `GoogleApi.Firestore.V1.Model.StructuredAggregationQuery.t`, *default:* `nil`) - An aggregation query.
  *   `transaction` (*type:* `String.t`, *default:* `nil`) - Run the aggregation within an already active transaction. The value here is the opaque transaction ID to execute the query in.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :newTransaction => GoogleApi.Firestore.V1.Model.TransactionOptions.t() | nil,
          :readTime => DateTime.t() | nil,
          :structuredAggregationQuery =>
            GoogleApi.Firestore.V1.Model.StructuredAggregationQuery.t() | nil,
          :transaction => String.t() | nil
        }

  field(:newTransaction, as: GoogleApi.Firestore.V1.Model.TransactionOptions)
  field(:readTime, as: DateTime)
  field(:structuredAggregationQuery, as: GoogleApi.Firestore.V1.Model.StructuredAggregationQuery)
  field(:transaction)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.RunAggregationQueryRequest do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.RunAggregationQueryRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.RunAggregationQueryRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
