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

defmodule GoogleApi.AndroidManagement.V1.Model.WebApp do
  @moduledoc """
  A web app.

  ## Attributes

  *   `displayMode` (*type:* `String.t`, *default:* `nil`) - The display mode of the web app.
  *   `icons` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.WebAppIcon.t)`, *default:* `nil`) - A list of icons for the web app. Must have at least one element.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the web app, which is generated by the server during creation in the form enterprises/{enterpriseId}/webApps/{packageName}.
  *   `startUrl` (*type:* `String.t`, *default:* `nil`) - The start URL, i.e. the URL that should load when the user opens the application.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the web app as displayed to the user (e.g., amongst a list of other applications, or as a label for an icon).
  *   `versionCode` (*type:* `String.t`, *default:* `nil`) - The current version of the app.Note that the version can automatically increase during the lifetime of the web app, while Google does internal housekeeping to keep the web app up-to-date.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayMode => String.t() | nil,
          :icons => list(GoogleApi.AndroidManagement.V1.Model.WebAppIcon.t()) | nil,
          :name => String.t() | nil,
          :startUrl => String.t() | nil,
          :title => String.t() | nil,
          :versionCode => String.t() | nil
        }

  field(:displayMode)
  field(:icons, as: GoogleApi.AndroidManagement.V1.Model.WebAppIcon, type: :list)
  field(:name)
  field(:startUrl)
  field(:title)
  field(:versionCode)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.WebApp do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.WebApp.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.WebApp do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
