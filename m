Return-Path: <open-iscsi+bncBCHZVHVFVMARBAF7YKQAMGQE2JRS74A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE186B9B3E
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 17:23:30 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id h18-20020adfa4d2000000b002cea098a651sf1595125wrb.3
        for <lists+open-iscsi@lfdr.de>; Tue, 14 Mar 2023 09:23:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1678811010; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vqo7aV2DdEKvVs13M0Z7j+MQ0BBAQJ455k5j6Hwhp7fnOMx0nGP5nDYhmhxWvOTioI
         6L5gPX2RYgGdT6RM+yUvBoTmvJfIiv4/f1sB2dilULiWJ8VgRHe507gptwKXicO9zTaS
         FZ0q2vjWQRVYC+BHJqgr5vh/f6dr3sEhm3zAWmWvNIXH+N8YIyqWUJsG5UvH+bEe7p6o
         ablLeucEg5r4r5g4UI060dEkAnN2sEb4magkgLqoDhsEdUfE4p+E0QJB/FzLEwV0A5os
         PU6B+AwijAgKgpuT8lfh8xMbxRbl/48YzxpUot/7N0+/2vTVHfjay33AYyDTOdNBylxn
         /TOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=jliDbRfw+IXMEwUPQJxhV7RhWAX9GJny7fu2seLVxys=;
        b=SzdgNPaXCTyMejzcMYolHvVqzpIVn1mGb954+RWku5SB3TwOIbpwleSpnw3+0EJks0
         LLbL4JwueDHdfvsvcQWY4DAq9QTmEtximnuUeAPOplzoBFHnNSI2vDyY3oDNnaBxZwM6
         dHlNGcajkWmZx3nFpKyq39numg7CgMIz2xNAQ/+ZQ5Lbyk52OH+j3rB7GEwuv/ClewXC
         TucEzsCwNx1ZFcqacfbIGdThnkweomzliE2BI2LOo566VVpMsMcCem5J8JdTcrPy73R6
         7q1auPQYws7xbor2CFQTLL+OVKNh8c0XZT+B+lOb5lClxqu9gIXjqwwqv/1BpSIRw1xa
         Z3aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=kYEh5XIa;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678811010;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jliDbRfw+IXMEwUPQJxhV7RhWAX9GJny7fu2seLVxys=;
        b=ATdmqQP+EC/hoAp7nFcyJrIFQ+7VQlTQOghUbegpGUg5tiAF/h8S13SNM1j7y+gWv6
         +xWQhqLxwce0hBl2qdzrgdNEWef7J2ZMDQG2eZqXBspdaLfrTJ+EA1wLLwEXlbyF4o4g
         pNYjGhyLdqNLUDX4hWknfCw5IrIb0Zd9hIAkVkpAdGipq9Q+4sVdKFCaaldq2NhFE/kn
         eUTdoZ38M3cAJKT9iiEb8YqC0LO2BcGnY36DzqfSIyD7LFky8p2MG4Ivq+cb3eBmolcK
         EdrUyR11353CxslreGMU4ksCc/YHxcZJL5xyprd1YDAXqCUuOE4p4OKUVn6lkQeHUsEb
         BGdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678811010;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jliDbRfw+IXMEwUPQJxhV7RhWAX9GJny7fu2seLVxys=;
        b=fH1vkbzoBppZtxLCgq2WqR/Ugm3drYgXLHsJum1D1dj+6nBLHniCLoyJhFiQRCKNBi
         wPeek0BDOMZHzfW9crE0hbigfzy10kmJSXrd8wopGr7/nBB13zXM1z/fP2oTKm6ZiU0k
         qxLoJ2hjjZTiQIIo3gdx91im3jcQXaOlY35S1h5jVDCIyEcAjrp7M6iIJLZl0GgV639D
         23kpDD/DS2b4lVR4J+dRFnEqaJCMO4XfuDuJvmZIwkSEO4GbzlTYP4/Mk02+2jd1cmCm
         14/97welJS715kSjSn8qJ1UkxmKq/k/1wuqU6+sVANZJRyIH0qi3lMFy1wQs+IFOvrXv
         xXWg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKWJX3D5/lEjztia1srsMldeOzDcVMO7tZFrza8/E8FclqbW025i
	WQFRAa47wgJzjH25rQq0v+g=
X-Google-Smtp-Source: AK7set/0P9yDsjXfaogMbeDZoMLsaSU7YUO8A5ZYn4enb0PAYHMKpXZ9BRvFINmYRiOA+czJB12YnA==
X-Received: by 2002:a05:600c:1d02:b0:3e2:98f:1d76 with SMTP id l2-20020a05600c1d0200b003e2098f1d76mr4414518wms.8.1678811009959;
        Tue, 14 Mar 2023 09:23:29 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:1f81:b0:2c5:55ca:3a3b with SMTP id
 bw1-20020a0560001f8100b002c555ca3a3bls2897183wrb.1.-pod-prod-gmail; Tue, 14
 Mar 2023 09:23:27 -0700 (PDT)
X-Received: by 2002:a5d:684c:0:b0:2cf:ef57:8361 with SMTP id o12-20020a5d684c000000b002cfef578361mr1247301wrw.13.1678811007274;
        Tue, 14 Mar 2023 09:23:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1678811007; cv=none;
        d=google.com; s=arc-20160816;
        b=ouox6PsGM3iTq1eBgOiLdsEe3l7tbNYQW7oOIfUUVvpJL62rv0ghz9ZbyGtE0/gthA
         Z8lJ1IBLG3B+f2uPmOjdwULllXqLhPyh6JQs2EpaEDHrn6Ik3v77bbKDTcQ+Wr96OVGf
         CVxmCHziIPQzDA9TZLPtDC6Zt8id1e6PJXhsOj9m42DzMG7itt/+bidjWET/WL58Ej0Q
         k4EUE4OXqpDdLVM8HjBWmV1+GF/1vWQ4+wQs2uMSjxyj3v7hYgJzUeex5b0C85iXWDbk
         y66y3GhL6USlYZsIk95iN6gW2gZkl77QW620bR/J3fDkvPg4DffYE5Bn9Ud9/UCD4D+n
         /eKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature:dkim-signature;
        bh=Jr7OykjRAT7+Ft2yWE+IrijNAsw/Y2JZKX2iXLtLrjg=;
        b=lMQ/0Tf22db0tbZOVFXB9Cwk1nmeICeJSEF/rYRLmlM0JWpnYsqWQFf1hXqfHEK0jW
         CSnkJY2cEECOgkCmyTesTkaZPzOemByOOflVIfQOsUA1QeDxdTIoNR79EKLVHHliRL1h
         8AcNq83Eqs5rAQwxVasCB6Cjm8fMIO/e7Fbe3tTiEj7B8r81iy2B9LvUNugl38CCTfpk
         guMYHTSYSbDzB4aZzCfnS0aXyNm66M7rPcBM7ycqk0GMzDCpv+tTy5Sa0MzI55Wx/HRN
         b8QoDhMcgFwC0CO7+QSxyg6N6R4wZguY/COcpDGguonSodifhgqJ9RuBnpJHaQje9AP9
         IT5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=kYEh5XIa;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       spf=pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=hare@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2001:67c:2178:6::1d])
        by gmr-mx.google.com with ESMTPS id az34-20020a05600c602200b003ed1fe9bec2si195772wmb.0.2023.03.14.09.23.27
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 09:23:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1d as permitted sender) client-ip=2001:67c:2178:6::1d;
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 03E6E1F8A3;
	Tue, 14 Mar 2023 16:23:27 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id DC7B813A26;
	Tue, 14 Mar 2023 16:23:26 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id aN8rNX6fEGRdYgAAMHmgww
	(envelope-from <hare@suse.de>); Tue, 14 Mar 2023 16:23:26 +0000
Message-ID: <a9f8cc4f-5d60-be5e-d294-c4a9baa16ec4@suse.de>
Date: Tue, 14 Mar 2023 17:23:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC PATCH 2/9] iscsi: associate endpoints with a host
Content-Language: en-US
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
References: <cover.1675876731.git.lduncan@suse.com>
 <154c7602b3cc59f8af44439249ea5e5eb75f92d3.1675876734.git.lduncan@suse.com>
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <154c7602b3cc59f8af44439249ea5e5eb75f92d3.1675876734.git.lduncan@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=kYEh5XIa;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       spf=pass
 (google.com: domain of hare@suse.de designates 2001:67c:2178:6::1d as
 permitted sender) smtp.mailfrom=hare@suse.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=suse.de
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 2/8/23 18:40, Lee Duncan wrote:
> From: Lee Duncan <lduncan@suse.com>
> 
> Right now the iscsi_endpoint is only linked to a connection once that
> connection has been established.  For net namespace filtering of the
> sysfs objects, associate an endpoint with the host that it was
> allocated for when it is created.
> 
> Signed-off-by: Chris Leech <cleech@redhat.com>
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
>   drivers/infiniband/ulp/iser/iscsi_iser.c | 2 +-
>   drivers/scsi/be2iscsi/be_iscsi.c         | 2 +-
>   drivers/scsi/bnx2i/bnx2i_iscsi.c         | 2 +-
>   drivers/scsi/cxgbi/libcxgbi.c            | 2 +-
>   drivers/scsi/qedi/qedi_iscsi.c           | 2 +-
>   drivers/scsi/qla4xxx/ql4_os.c            | 2 +-
>   drivers/scsi/scsi_transport_iscsi.c      | 3 ++-
>   include/scsi/scsi_transport_iscsi.h      | 6 +++++-
>   8 files changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
> index 620ae5b2d80d..d38c909b462f 100644
> --- a/drivers/infiniband/ulp/iser/iscsi_iser.c
> +++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
> @@ -802,7 +802,7 @@ static struct iscsi_endpoint *iscsi_iser_ep_connect(struct Scsi_Host *shost,
>   	struct iser_conn *iser_conn;
>   	struct iscsi_endpoint *ep;
>   
> -	ep = iscsi_create_endpoint(0);
> +	ep = iscsi_create_endpoint(shost, 0);
>   	if (!ep)
>   		return ERR_PTR(-ENOMEM);
>   
> diff --git a/drivers/scsi/be2iscsi/be_iscsi.c b/drivers/scsi/be2iscsi/be_iscsi.c
> index 8aeaddc93b16..c893d193f5ef 100644
> --- a/drivers/scsi/be2iscsi/be_iscsi.c
> +++ b/drivers/scsi/be2iscsi/be_iscsi.c
> @@ -1168,7 +1168,7 @@ beiscsi_ep_connect(struct Scsi_Host *shost, struct sockaddr *dst_addr,
>   		return ERR_PTR(ret);
>   	}
>   
> -	ep = iscsi_create_endpoint(sizeof(struct beiscsi_endpoint));
> +	ep = iscsi_create_endpoint(shost, sizeof(struct beiscsi_endpoint));
>   	if (!ep) {
>   		ret = -ENOMEM;
>   		return ERR_PTR(ret);
> diff --git a/drivers/scsi/bnx2i/bnx2i_iscsi.c b/drivers/scsi/bnx2i/bnx2i_iscsi.c
> index a3c800e04a2e..ac63e93e07c6 100644
> --- a/drivers/scsi/bnx2i/bnx2i_iscsi.c
> +++ b/drivers/scsi/bnx2i/bnx2i_iscsi.c
> @@ -384,7 +384,7 @@ static struct iscsi_endpoint *bnx2i_alloc_ep(struct bnx2i_hba *hba)
>   	struct bnx2i_endpoint *bnx2i_ep;
>   	u32 ec_div;
>   
> -	ep = iscsi_create_endpoint(sizeof(*bnx2i_ep));
> +	ep = iscsi_create_endpoint(hba->shost, sizeof(*bnx2i_ep));
>   	if (!ep) {
>   		printk(KERN_ERR "bnx2i: Could not allocate ep\n");
>   		return NULL;
> diff --git a/drivers/scsi/cxgbi/libcxgbi.c b/drivers/scsi/cxgbi/libcxgbi.c
> index af281e271f88..94edf8e1fb0c 100644
> --- a/drivers/scsi/cxgbi/libcxgbi.c
> +++ b/drivers/scsi/cxgbi/libcxgbi.c
> @@ -2926,7 +2926,7 @@ struct iscsi_endpoint *cxgbi_ep_connect(struct Scsi_Host *shost,
>   		goto release_conn;
>   	}
>   
> -	ep = iscsi_create_endpoint(sizeof(*cep));
> +	ep = iscsi_create_endpoint(shost, sizeof(*cep));
>   	if (!ep) {
>   		err = -ENOMEM;
>   		pr_info("iscsi alloc ep, OOM.\n");
> diff --git a/drivers/scsi/qedi/qedi_iscsi.c b/drivers/scsi/qedi/qedi_iscsi.c
> index 31ec429104e2..4baf1dbb8e92 100644
> --- a/drivers/scsi/qedi/qedi_iscsi.c
> +++ b/drivers/scsi/qedi/qedi_iscsi.c
> @@ -931,7 +931,7 @@ qedi_ep_connect(struct Scsi_Host *shost, struct sockaddr *dst_addr,
>   		return ERR_PTR(-ENXIO);
>   	}
>   
> -	ep = iscsi_create_endpoint(sizeof(struct qedi_endpoint));
> +	ep = iscsi_create_endpoint(shost, sizeof(struct qedi_endpoint));
>   	if (!ep) {
>   		QEDI_ERR(&qedi->dbg_ctx, "endpoint create fail\n");
>   		ret = -ENOMEM;
> diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
> index 005502125b27..acebf9c92c04 100644
> --- a/drivers/scsi/qla4xxx/ql4_os.c
> +++ b/drivers/scsi/qla4xxx/ql4_os.c
> @@ -1717,7 +1717,7 @@ qla4xxx_ep_connect(struct Scsi_Host *shost, struct sockaddr *dst_addr,
>   	}
>   
>   	ha = iscsi_host_priv(shost);
> -	ep = iscsi_create_endpoint(sizeof(struct qla_endpoint));
> +	ep = iscsi_create_endpoint(shost, sizeof(struct qla_endpoint));
>   	if (!ep) {
>   		ret = -ENOMEM;
>   		return ERR_PTR(ret);
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index be69cea9c6f8..86bafdb862a5 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -204,7 +204,7 @@ static struct attribute_group iscsi_endpoint_group = {
>   };
>   
>   struct iscsi_endpoint *
> -iscsi_create_endpoint(int dd_size)
> +iscsi_create_endpoint(struct Scsi_Host *shost, int dd_size)
>   {
>   	struct iscsi_endpoint *ep;
>   	int err, id;
> @@ -230,6 +230,7 @@ iscsi_create_endpoint(int dd_size)
>   
>   	ep->id = id;
>   	ep->dev.class = &iscsi_endpoint_class;
> +	ep->dev.parent = &shost->shost_gendev;
>   	dev_set_name(&ep->dev, "ep-%d", id);
>   	err = device_register(&ep->dev);
>           if (err)

Umm... doesn't this change the sysfs layout?
IE won't the endpoint node be moved under the Scsi_Host directory?

But even if it does: do we care?


Cheers,

Hannes

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a9f8cc4f-5d60-be5e-d294-c4a9baa16ec4%40suse.de.
