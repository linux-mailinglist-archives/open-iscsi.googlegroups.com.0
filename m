Return-Path: <open-iscsi+bncBDGIZD433YCRBJ5G2OUAMGQE65XPE4Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 979827B1047
	for <lists+open-iscsi@lfdr.de>; Thu, 28 Sep 2023 03:13:13 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id d75a77b69052e-418198baf49sf128072701cf.1
        for <lists+open-iscsi@lfdr.de>; Wed, 27 Sep 2023 18:13:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695863592; cv=pass;
        d=google.com; s=arc-20160816;
        b=U0lOpzWtAxY7lF2AGPKZVbYHN+radgKfKiySsBzhsDy4JkOCiTomViIrYJzpV106rM
         ifqrlTQ5sg02IuAvaDEUGd4dgZvJ66vMaHkXkr9YDTyrXTLK+JT66gugTC4b1vRGUo3C
         X/VPC4htNHqxiH4lvMqepfiQ8AWO6VrWC1Tli8hEuBNvJE3f/zcuL8zb6rLzUvlUQLY+
         tODGJ82vSMtQPpy5ByEeNvB+/ce4Wilf4WlVO3JAG4amNR5pO5/CLop4vHCOrgidGZPS
         I0MS3ic9HeB+hUSeAWDZAzq0XSUwvXnWPrxwBjjFYT+BC8E0bAJ2vN7a6ev8gtS8VwMj
         BAGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:sender:dkim-signature;
        bh=PpEowZ2t45Yhmk0r6I/5qduUZCti2RPAqDiOwbiwRPg=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=N/tUCaTWvbvtFV44YSkZ4FJqG9k64gcWTpXU6Ah1F4kdVICpv1dp7mh8sqKoGspt3n
         eIiaRYhjB7f9Wkvcgsm8OWz9t1v1McZ+SZHAc64L1QNliYkpP9zUO6S0i7A9fj6PT8Gy
         ZpcRwLfR8Jhrsf+ZVd2ZVXqsW5RdWqt4HCOf2+KHnpZTRqF6TGCAcFG18UfxxDoIgnJS
         xOhrR2mTph7IXifBKhQczW+L3vL7DWjZiKoFEiUZyCLW/v+xMYwaduIUtYsQ0v1QJree
         vVYSs4pB+4puAqJWRTWwl78tm7Tl52JGVz76jUOTPR+MGhjA4esfUFU2iFW/K1mJqh8m
         ZKdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.137 as permitted sender) smtp.mailfrom=dgilbert@interlog.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695863592; x=1696468392; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=PpEowZ2t45Yhmk0r6I/5qduUZCti2RPAqDiOwbiwRPg=;
        b=cC7j+Hpcddz4rdBy1Xbdn0Blk1HojIV50FIOjIz9vcE8mbM0/bkyTGO+GxLkm1H5fA
         W9uR5DAaT1zIBYXyooAdrnPAvR+hcSnnpRaLg2Eu3txIz5zO4kcwsajWOIG2iCOgmxyz
         18nR1q7JBLfoqkDpaSKAjiMnnetf2ecVIACIlTADI0KwMSgOfL8wahOwcu3YBEctVlW7
         v7bzUkMKgeyHdc7QAKYHJajGp/q2egtz0NtmB50P65gl/EzTG7KFdoiIyHbc6cuUfEsF
         UqLQNCSNxyzqb9WHNyHeaNpRcQuE7bhnQEUdrFYbliLFeESa0Y4Q94CBCGuL1x6nHDdn
         UCtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695863592; x=1696468392;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:reply-to:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PpEowZ2t45Yhmk0r6I/5qduUZCti2RPAqDiOwbiwRPg=;
        b=s+aYqgLpt5Y8ubD1DqSmp9jPSVr/kGFnrp6MwDinWRrFbj40uVzGdip54aujHRYgnc
         quImp4c+8jvcakYfghFSsejzbxM0x3BpeJHEuGkc7qmHJ+3XwFj0uDe6pCP5LxYtEdG+
         UVN7Ii8rFkkH6za9rMFOAO8K4gAiau65DR0jcj1zQYnB291ucUMf4IOnGEcOvQFhQlZ+
         3FN5XxAMDgUCUzCAs6izYHUL5affpR+V8rl5S9axvEgvITT6WZ71LA7HsBd2qA52QQrE
         kOeS3qvrDizebun9IiO3/45mdYxjveYcyVf4zFBaBTYsrvuhcLKIpvEoa6p2ZAjzWMZn
         kLBw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YwOvRYGtKb+oWhnUo02XNDaqBOqHZDwGZqHwsfCagtTtBQF8qy3
	//+zRpodKfDnjLOi/ZEsR8g=
X-Google-Smtp-Source: AGHT+IGWCs4rvhDjzXDHQFJ97JV6IF5IrjknZDTVRxBLytKVUp/1zFrjbjZHCEnIUqr3qzsv+zkYRg==
X-Received: by 2002:ac8:5d91:0:b0:419:529e:dcfd with SMTP id d17-20020ac85d91000000b00419529edcfdmr3603539qtx.3.1695863592277;
        Wed, 27 Sep 2023 18:13:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:5545:0:b0:403:c0cb:532d with SMTP id o5-20020ac85545000000b00403c0cb532dls1219803qtr.1.-pod-prod-05-us;
 Wed, 27 Sep 2023 18:13:10 -0700 (PDT)
X-Received: by 2002:a05:622a:104e:b0:410:9b3c:e828 with SMTP id f14-20020a05622a104e00b004109b3ce828mr4517499qte.37.1695863590365;
        Wed, 27 Sep 2023 18:13:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695863590; cv=none;
        d=google.com; s=arc-20160816;
        b=AxAQzx6iUo2+F3hInmNpUSheqdrH5OwKxMFugXp7OpNLFzkdPorY6Uuvu9Y88Ck83k
         eBdcoxEd07eWft922ncbmisvmnsdpey3ViAgEGZpzLoD7qHGve8wo76egiW5so9BBLCR
         qpmyZJLdoSbQ9zgujnPaGUPJ/oYiYxgziHzYNs61RSCZ74m9hDC412p+3mYxkMyduAvb
         8UQ+SwAgBQoAjJ2+r68DzGlFmoKQSsFYmepF3Qm8KzSryN3Qvw9Lnqvk28co524w3VnD
         UaAqUT1hZhE05a9TxEaj5+jK4EfactxcsQY53MJFcTJLSGxYM2PtJH9WK3P8b/oBqmRY
         Hiyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:reply-to:user-agent:mime-version:date
         :message-id;
        bh=kg4rRosN0oSrWVIYWcwrIkeL/OFCZbyt1Mc4XxbJyGk=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=uJb1Z8c9lCW+UpJOj+kEJczDdm9mJ/5WZz6e+2grah/OTOftH4SNJe6hZY0dCsGSU9
         VFkdgC2BEt7y7WzVuuWiq0x9EJr3fHttoRzysjW00WuYZekCCPfpwzOvsLQ5oxOd32gQ
         b4bweiKCdsHj4M/YtI5D8sQ/IK62FPsHeqlzkU7Tt2ocEJGcs65VyoPQjSnpky9nvqYt
         Hd20//eqLBWMHcqdMjmzZMXapBoE/kT4KIlWhpDksb9yN52gb3ZksoOZfG+XP5sF1P/Z
         IOjb3BRy0oPVBbspF6yOgT3Q0v8xmB5DFddyeN+yZTeMn6irxIThLXvPfFaf0k8WiWP4
         MfMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.137 as permitted sender) smtp.mailfrom=dgilbert@interlog.com
Received: from mp-relay-02.fibernetics.ca (mp-relay-02.fibernetics.ca. [208.85.217.137])
        by gmr-mx.google.com with ESMTPS id ge15-20020a05622a5c8f00b0041790471199si848990qtb.4.2023.09.27.18.13.10
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 18:13:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of dgilbert@interlog.com designates 208.85.217.137 as permitted sender) client-ip=208.85.217.137;
Received: from mailpool-fe-01.fibernetics.ca (mailpool-fe-01.fibernetics.ca [208.85.217.144])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mp-relay-02.fibernetics.ca (Postfix) with ESMTPS id BF92876AA1;
	Thu, 28 Sep 2023 01:13:09 +0000 (UTC)
Received: from localhost (mailpool-mx-01.fibernetics.ca [208.85.217.140])
	by mailpool-fe-01.fibernetics.ca (Postfix) with ESMTP id B269A457E4;
	Thu, 28 Sep 2023 01:13:09 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at
X-Spam-Flag: NO
X-Spam-Score: -0.199
X-Spam-Level: 
X-Spam-Status: No, score=-0.199 tagged_above=-999 required=5
	tests=[ALL_TRUSTED=-1, BAYES_50=0.8, URIBL_BLOCKED=0.001]
	autolearn=no autolearn_force=no
Received: from mailpool-fe-01.fibernetics.ca ([208.85.217.144])
	by localhost (mail-mx-01.fibernetics.ca [208.85.217.140]) (amavisd-new, port 10024)
	with ESMTP id kEFzXDrP3_UU; Thu, 28 Sep 2023 01:13:08 +0000 (UTC)
Received: from [192.168.48.17] (host-104-157-209-188.dyn.295.ca [104.157.209.188])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dgilbert@interlog.com)
	by mail.ca.inter.net (Postfix) with ESMTPSA id A4F4F457E2;
	Thu, 28 Sep 2023 01:13:06 +0000 (UTC)
Message-ID: <8c7cfe09-d145-4387-91cf-da9d4e2398e1@interlog.com>
Date: Wed, 27 Sep 2023 21:13:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: open-iscsi@googlegroups.com
Subject: Re: [PATCH v5 01/10] scsi: scsi_debug: create scsi_debug directory in
 the debugfs filesystem
Content-Language: en-CA
To: Wenchao Hao <haowenchao2@huawei.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, louhongxiang@huawei.com
References: <20230922092906.2645265-1-haowenchao2@huawei.com>
 <20230922092906.2645265-2-haowenchao2@huawei.com>
From: Douglas Gilbert <dgilbert@interlog.com>
In-Reply-To: <20230922092906.2645265-2-haowenchao2@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: dgilbert@interlog.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dgilbert@interlog.com designates 208.85.217.137 as
 permitted sender) smtp.mailfrom=dgilbert@interlog.com
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

On 2023-09-22 05:28, Wenchao Hao wrote:
> Create directory scsi_debug in the root of the debugfs filesystem.
> Prepare to add interface for manage error injection.
> 
> Acked-by: Douglas Gilbert <dgilbert@interlog.com>
> Signed-off-by: Wenchao Hao <haowenchao2@huawei.com>
> ---
>   drivers/scsi/scsi_debug.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
> index 9c0af50501f9..35c336271b13 100644
> --- a/drivers/scsi/scsi_debug.c
> +++ b/drivers/scsi/scsi_debug.c
> @@ -41,6 +41,7 @@
>   #include <linux/random.h>
>   #include <linux/xarray.h>
>   #include <linux/prefetch.h>
> +#include <linux/debugfs.h>
>   
>   #include <net/checksum.h>
>   
> @@ -862,6 +863,8 @@ static const int device_qfull_result =
>   
>   static const int condition_met_result = SAM_STAT_CONDITION_MET;
>   
> +static struct dentry *sdebug_debugfs_root;
> +
>   
>   /* Only do the extra work involved in logical block provisioning if one or
>    * more of the lbpu, lbpws or lbpws10 parameters are given and we are doing
> @@ -7011,6 +7014,8 @@ static int __init scsi_debug_init(void)
>   		goto driver_unreg;
>   	}
>   
> +	sdebug_debugfs_root = debugfs_create_dir("scsi_debug", NULL);

debugfs_create_dir() can fail and return NULL. Looking at other drivers, most
seem to assume it will work. Since the scsi_debug driver is often used to test
abnormal situations, perhaps adding something like:
     if (!sdebug_debugfs_root)
         pr_info("%s: failed to create initial debugfs directory\n", __func__);

might save someone a bit of time if a NULL dereference on sdebug_debugfs_root
follows later. That is what the mpt3sas driver does.

Doug Gilbert

> +
>   	for (k = 0; k < hosts_to_add; k++) {
>   		if (want_store && k == 0) {
>   			ret = sdebug_add_host_helper(idx);
> @@ -7057,6 +7062,7 @@ static void __exit scsi_debug_exit(void)
>   
>   	sdebug_erase_all_stores(false);
>   	xa_destroy(per_store_ap);
> +	debugfs_remove(sdebug_debugfs_root);
>   }
>   
>   device_initcall(scsi_debug_init);

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8c7cfe09-d145-4387-91cf-da9d4e2398e1%40interlog.com.
