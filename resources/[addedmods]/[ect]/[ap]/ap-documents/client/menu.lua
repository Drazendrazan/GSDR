ContextMenu = function(data)
  exports['qb-menu']:openMenu(data)
end

RegisterNetEvent('ap-documents:client:openDocumentMenu', function()
	local documentMain = {
		{
			header = "Document Types",
			isMenuHeader = true,
		},
	}
	
	for k in pairs(Shared.Documents) do
    table.insert(documentMain,  {
      header = k, 
      txt = "Click to make a Document.",
      params = {
        isServer = false,
        event = "ap-documents:client:openDocument",
        args = {
			doc = Shared.Documents[k],
			type = true
		}
      }
    }) 			
	end
	ContextMenu(documentMain)
end)

RegisterNetEvent('ap-documents:client:myDocuments', function()
    QBCore.Functions.TriggerCallback('ap-documents:getDocuments', function(db)
      local myDocument = {
          {
              header = "My Documents",
              isMenuHeader = true,
          },
      }
      
      for _, v in pairs(db) do
      table.insert(myDocument,  {
        header = v.name, 
        txt = v.catergory,
        params = {
          isServer = false,
          event = "ap-documents:client:openDocument",
          args = json.decode(v.document)
        }
      }) 			
      end
      ContextMenu(myDocument)
    end)
end)

RegisterNetEvent('ap-documents:client:showDocumentOptions', function(document, docname, hasCopier, itemMeta)
    local myDocument = {
        {
          header = "Document: "..docname,
          txt = "Document description: "..document['description'],
          isMenuHeader = true,
        },
        {
          header = "View Document",
          txt = "View this document, you will only be able to see this.",
          params = {
            isServer = false,
            event = "ap-documents:client:showMetaDocument",
            args = document
          }
        },
        {
          header = "Show Document",
          txt = "Show this document to people around you, including yourself.",
          params = {
            isServer = true,
            event = "ap-documents:server:showMetaDocument",
            args = document
          }
        },
    }
    if hasCopier then
        table.insert(myDocument, {
            header = "Reprint Document",
            txt = "Use this to make a copy of the document to give to someone else or as a copy.",
            params = {
                isServer = true,
                event = "ap-documents:server:printCopy",
                args = itemMeta
            }
        }) 
    end
    ContextMenu(myDocument)
end)

RegisterNetEvent('ap-documents:client:showEmptyDocuments', function(job, gang, citizenid)
    local DocumentCreation = {
        {
          header = "Unrestricted Documents",
          txt = "Here will be all the documents you can create.",
          params = {
            isServer = false,
            event = "ap-documents:client:unrestrictedDocuments",
            args = {}
          }
        },
        {
          header = "Restricted Documents",
          txt = "Here will be documents assigned to you, for you to create.",
          params = {
            isServer = false,
            event = "ap-documents:client:restrictedDocuments",
            args = {
                job = job,
                gang = gang,
                citizenid = citizenid
            }
          }
        }
    }
    ContextMenu(DocumentCreation)
end)

RegisterNetEvent('ap-documents:client:unrestrictedDocuments', function()
    local UnrestrictedDocumentCreation = {
        {
          header = "Document Types",
          isMenuHeader = true
        },
    }
    for k, v in pairs(Shared.Documents) do
      if v.restriction.job.enable == false and v.restriction.gang.enable == false and v.restriction.citizenid.enable == false then
        table.insert(UnrestrictedDocumentCreation, {
            header = k,
            txt = v.description,
            params = {
                isServer = false,
                event = "ap-documents:client:openDocument",
                args = {
                    doc = Shared.Documents[k],
			        type = true
                }
            }
        }) 
      end
    end
    table.insert(UnrestrictedDocumentCreation, {
        header = "Back",
        txt = "Back to main menu.",
        params = {
            isServer = true,
            event = "ap-documents:server:refreshDocs",
            args = {}
        }
    }) 
    ContextMenu(UnrestrictedDocumentCreation)
end)

RegisterNetEvent('ap-documents:client:restrictedDocuments', function(data)
    local JobType, GangType, CitizenType = false, false, false
    local RestrictedDocumentCreation = {
        {
          header = "Restricted Document Types",
          isMenuHeader = true
        },
    }
    for k, v in pairs(Shared.Documents) do
      if v.restriction.job.enable and checkJob(v.restriction.job.jobs, data.job)  then
        JobType = true
      end
      if v.restriction.gang.enable and checkGang(v.restriction.gang.gangs, data.gang) then
        GangType = true
      end
      if v.restriction.citizenid.enable and checkCitizenid(v.restriction.citizenid.id, data) then
        CitizenType = true
      end
    end
    if JobType then
        table.insert(RestrictedDocumentCreation, {
            header = "Job Documents",
            txt = "You will be able to access your job documents here.",
            params = {
                isServer = false,
                event = "ap-documents:client:jobDocs",
                args = data
            }
        })     
    end
    if GangType then
        table.insert(RestrictedDocumentCreation, {
            header = "Gang Documents",
            txt = "You will be able to access your gang documents here.",
            params = {
                isServer = false,
                event = "ap-documents:client:gangDocs",
                args = data
            }
        })     
    end
    if CitizenType then
        table.insert(RestrictedDocumentCreation, {
            header = "Private Documents",
            txt = "You will be able to access your private documents here.",
            params = {
                isServer = false,
                event = "ap-documents:client:privateDocs",
                args = data
            }
        })     
    end
    table.insert(RestrictedDocumentCreation, {
        header = "Back",
        txt = "Back to main menu.",
        params = {
            isServer = true,
            event = "ap-documents:server:refreshDocs",
            args = {}
        }
    }) 
    ContextMenu(RestrictedDocumentCreation)
end)

RegisterNetEvent('ap-documents:client:jobDocs', function(data)
    local JobDocumentsCreate = {
        {
          header = "Job Document Types",
          isMenuHeader = true
        },
    }
    for k, v in pairs(Shared.Documents) do
        if v.restriction.job.enable and checkJob(v.restriction.job.jobs, data.job) then
            table.insert(JobDocumentsCreate, {
                header = k,
                txt = v.description,
                params = {
                    isServer = false,
                    event = "ap-documents:client:openDocument",
                    args = {
                        doc = Shared.Documents[k],
			            type = true
                    }
                }
            })   
        end
    end
    table.insert(JobDocumentsCreate, {
        header = "Back",
        txt = "Back to restricted Documents.",
        params = {
            isServer = false,
            event = "ap-documents:client:restrictedDocuments",
            args = data
        }
    }) 
    ContextMenu(JobDocumentsCreate)
end)

RegisterNetEvent('ap-documents:client:gangDocs', function(data)
    local GangDocumentsCreate = {
        {
          header = "Gang Document Types",
          isMenuHeader = true
        },
    }
    for k, v in pairs(Shared.Documents) do
        if v.restriction.gang.enable and checkGang(v.restriction.gang.gangs, data.gang) then
            table.insert(GangDocumentsCreate, {
                header = k,
                txt = v.description,
                params = {
                    isServer = false,
                    event = "ap-documents:client:openDocument",
                    args = {
                        doc = Shared.Documents[k],
			            type = true
                    }
                }
            })   
        end
    end
    table.insert(GangDocumentsCreate, {
        header = "Back",
        txt = "Back to restricted Documents.",
        params = {
            isServer = false,
            event = "ap-documents:client:restrictedDocuments",
            args = data
        }
    }) 
    ContextMenu(GangDocumentsCreate)
end)

RegisterNetEvent('ap-documents:client:privateDocs', function(data)
    local PrivateDocumentsCreate = {
        {
          header = "Private Document Types",
          isMenuHeader = true
        },
    }
    for k, v in pairs(Shared.Documents) do
        if v.restriction.citizenid.enable and checkCitizenid(v.restriction.citizenid.id, data) then
            table.insert(PrivateDocumentsCreate, {
                header = k,
                txt = v.description,
                params = {
                    isServer = false,
                    event = "ap-documents:client:openDocument",
                    args = {
                        doc = Shared.Documents[k],
			            type = true
                    }
                }
            })   
        end
    end
    table.insert(PrivateDocumentsCreate, {
        header = "Back",
        txt = "Back to restricted Documents.",
        params = {
            isServer = false,
            event = "ap-documents:client:restrictedDocuments",
            args = data
        }
    }) 
    ContextMenu(PrivateDocumentsCreate)
end)

showDialog = function(documentTable)
    local dialog = exports["qb-input"]:ShowInput({
		header = "Document Information",
		submitText = "Create Document",
		inputs = {
			{
				text = "Document Name",
				name = "name",
				type = "text",
				isRequired = true
			},
			{
				text = "Document Type",
				name = "type",
				type = "text",
				isRequired = true
			}
		}
	})
	
	if dialog ~= nil then
	  TriggerServerEvent('ap-documents:server:createDocument', dialog.name, dialog.type, documentTable)
	end    
end