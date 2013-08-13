class MessageViewApp extends Backbone.View
	el: document.getElementByTag 'body'
	init: () =>
		chrome.storage.local.get 'messages', (messages) ->
			_.each messages, (message) ->
				newMessage = new Message(
					title: message.title,
					body: message.body,
					tags: message.tags,
					box: message.box
				)
				$('.' + box).append(new MessageView(newMessage))
			return
