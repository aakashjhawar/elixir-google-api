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

defmodule GoogleApi.Script.V1.Model.CreateProjectRequest do
  @moduledoc """
  Request to create a script project. Request to create a script project.

  ## Attributes

  *   `parentId` (*type:* `String.t`, *default:* `nil`) - The Drive ID of a parent file that the created script project is bound to. This is usually the ID of a Google Doc, Google Sheet, Google Form, or Google Slides file. If not set, a standalone script project is created.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title for the project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parentId => String.t() | nil,
          :title => String.t() | nil
        }

  field(:parentId)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.CreateProjectRequest do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.CreateProjectRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.CreateProjectRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
