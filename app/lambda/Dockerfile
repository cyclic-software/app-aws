# FROM public.ecr.aws/lambda/provided
FROM public.ecr.aws/lambda/nodejs:12
COPY ./* ./
COPY ./bootstrap /bootstrap
RUN npm install --global yarn
# CMD [ "./index.lambdaHandler"]
ENTRYPOINT [ "/bootstrap" ]
