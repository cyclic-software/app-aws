# FROM public.ecr.aws/lambda/provided
FROM public.ecr.aws/lambda/nodejs:12
COPY ./* ./
COPY ./bootstrap /bootstrap
RUN ./install_deps.sh
# CMD [ "./index.lambdaHandler"]
ENTRYPOINT [ "/bootstrap" ]
