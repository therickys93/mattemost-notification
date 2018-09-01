FROM python:3.6-alpine
RUN pip install mattermostdriver
COPY mattermost-notification /usr/bin/
RUN chmod +x /usr/bin/mattermost-notification
CMD ["/usr/bin/mattermost-notification", "--help"]