Return-Path: <open-iscsi+bncBD3JNNMDTMEBBRPAW2UAMGQEAEQ2JOI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id B87647AB499
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 17:18:32 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id e9e14a558f8ab-34fc965c70bsf12847825ab.2
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 08:18:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695395911; cv=pass;
        d=google.com; s=arc-20160816;
        b=ovxg/UQcflVuac20OLAATJqv0nTk6v5oewOnMdtczxjFzhsWwuCQUKz8tDVAQDZK9+
         GAn18rtylm7V3e5QAJN0HAH8xgq+CUAnFVSa9ii62UHvCAXC0Z0D7/lpBW3EyybA9G3w
         CotGS4+FQA6ivsWDC+4Zj3VqUIe3LypbX0TC/9LFh5+ZyV2ybb477+HYYFjS05Hqiz0C
         I2u7V3ykT2j8JTTUFlBiAZSh2E8LHg4nPK43BJTnuZRHENT04dje6H3PPvZDKtBZ8MfO
         FvJ0JjxDAiu34dAzrpArCnXGe0PJ1/wPXxk1w7rol3IEcI4rB+B0dut+s0zHjtr0oa3C
         YEVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=PURwlvMAMx0mW95Sb99c/A8wscGzDwnJpCKC4AoRMOY=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=fSEvzYh1VcpSQ9PW6jUT2RCQKMMbjU3xF2MpQP+VQRGoYBjNjnciJIPrAEoPMHPa8n
         ODED0YSftUdVjDI0TuNEr1DS8eU+kqidXULll1gKekOUQ30DdqSERD+Rt/oigWScF4bC
         qbPSGRHEruOS8+wBq7ldV1ZFMQpCJ2ezfXUndJGewmaKWw3CZQUqyNV0dYuYBcnHQxgj
         +FUNmEXS2m5O+dBuUZb5C+0m9LazUXrqYMFMa+MRpfS8DajX5lf1CJnoqAOcfmCi0ohJ
         ehHV1YPxjI+zInj5dyrq+UH2dDUCD9o7+inq8m77rsAbAb40rKFhxR+h3Merq+gSVwMh
         k0RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.167.169 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695395911; x=1696000711; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PURwlvMAMx0mW95Sb99c/A8wscGzDwnJpCKC4AoRMOY=;
        b=PsNtDt1m2TYeb5CBO6bIaGl0dur1iejVhIpp9e0A5ot7fa7uPnMmrX+QhsKg3GIZ4h
         QegcAslCOWB3y4ggbCMxDeZL1cCn6FqS+8/zdPFsFzkZE7YyiZm5T1aTvFs3m4G20AdJ
         SIdrU5ZqqkgWX4v4WzfIiW6eOEawMlfksIk2fLD6NZJ5oKSSYNq6Q+tWQ/f/zytZo0do
         RyiXl9eom73lUkNEU6tz0tXFL/CImbdYRAroUiW8SwGGT0nJYUv2rynUSrbJzmgJCoN5
         ZKRQ0ubWfsmWnMkHce6KTpH96Y8NbTeYMhU+P1R4MpEG45dj0Yr9/9Ud9tw5MGw/0rg3
         I/sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695395911; x=1696000711;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PURwlvMAMx0mW95Sb99c/A8wscGzDwnJpCKC4AoRMOY=;
        b=VktLFVGk/8s0+A9uLGjAnGugFFhJOrU1nA7AgtCFq2NF7kxvkykUfn0Qz0mKW+0sau
         gBvXubKlFhNIrnazDDtnfOngHn/qhcXcLFl5zyGWiArMlz5aF3wDDR92ptHb26D6iMeB
         f4UTKau/7u4q9UODBAEzrZKkG+rRm9NvW8fNyOXImycrOXSsPDXB+9rKW0lZIzGQhqoM
         RUp0KuFm8MwQ8arA3d3GXkcdmWCTtxi16oWl/IrSUabKNosZLn5XRoH3wMv/nJYEKZ2m
         Rn6tLop975V/DTi76cn1wV5T9kDnO6NGyFrvtjCdGmCOLJapEkQYUxvhm3+9WZNR61nf
         hJhw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YxqcZSiuNozYluxJLXjjrLIXI1a2dd1/hhEAzwQQg2wIfHytjxc
	5KN3BxGgJBqxk0OEg97z9+U=
X-Google-Smtp-Source: AGHT+IExDw7talr1rOo2SrbO36D85V+139WPt1Ud96iNSOMqFW1GlOl0dMHFYPe/47X6jlk8Q74kYA==
X-Received: by 2002:a05:6e02:18cf:b0:34d:f0b9:97ff with SMTP id s15-20020a056e0218cf00b0034df0b997ffmr11648481ilu.5.1695395911304;
        Fri, 22 Sep 2023 08:18:31 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:444d:0:b0:34c:c302:9f98 with SMTP id a13-20020a92444d000000b0034cc3029f98ls729340ilm.2.-pod-prod-02-us;
 Fri, 22 Sep 2023 08:18:29 -0700 (PDT)
X-Received: by 2002:a5e:d615:0:b0:792:931e:a93a with SMTP id w21-20020a5ed615000000b00792931ea93amr10579684iom.4.1695395909028;
        Fri, 22 Sep 2023 08:18:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695395909; cv=none;
        d=google.com; s=arc-20160816;
        b=RFDn2PCA+kzWL/e3Dj/xNMP5GPeHnTjjrMvcUXbOYbczXj4VrJUD4QyB4nhZWLA1gR
         3Mv8TLLkAJisi+P2mQqh7TSRH74H+zsSj3f4/sfoiYSCueWLJ9g5SN1UHt+iGQAtCLCE
         fi7Lx026aHEVNI46tDF+HHIgw5Z+JZaZMKq2TR8Tyl4QfB8ev+RctwUeoOn7NdUt7FGA
         C8cg3rg1Ld+18o+uGX5Cr1ce8I4e1sVG03kmN8rzLjvErclkPRIb9x3Nxkb4bWUpLHWh
         4/751Tz7o90m5aRMULvlD0oO6kUJJRqEs3GvYVbW2bCiLDV0BVAEHhSw8yy31eBe2+GK
         LPdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=rH3oex4JuuDiGcojuJxgW82OemDVXIWofXHS33ZWUIc=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=nPJ0C4/Yq8UKaDzB3dpJgIP0/VzNyza10sX4mdlRso7pfeb9XpvipxTyaPpPrfwIWq
         LRWq57gZMRiBUN3ub92VH5fH/UJqZUDe5ohxUHxJZUMucVZS/Dsp/jNEm/PAsTNsSkNW
         fYMEYSjAc+wSCsVwc1IO/QFVad7SPefwC+4Y4Tec0LXaW75rlnwbSOVM75CMBSh7NBM/
         ySTDVHkj7sEzwkMKRtEylrKh7be2I5Qu+K/ukOHduFp8iHWg/3bLSGGcyTLeUJyclZno
         brKl68W3qaEadxfNy/jgaDte9ctD0Z/HP/HL4kSswo7OPRcD+ecNel4UpceWTUKwdzPb
         2CMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.167.169 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com. [209.85.167.169])
        by gmr-mx.google.com with ESMTPS id ed28-20020a056602481c00b0079f955fa823si295787iob.1.2023.09.22.08.18.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Sep 2023 08:18:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.167.169 as permitted sender) client-ip=209.85.167.169;
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3ade101217bso1363074b6e.0
        for <open-iscsi@googlegroups.com>; Fri, 22 Sep 2023 08:18:29 -0700 (PDT)
X-Received: by 2002:a05:6808:df4:b0:3a9:307a:62aa with SMTP id g52-20020a0568080df400b003a9307a62aamr8363337oic.22.1695395908443;
        Fri, 22 Sep 2023 08:18:28 -0700 (PDT)
Received: from ?IPV6:2620:15c:211:201:70e9:c86f:4352:fcc? ([2620:15c:211:201:70e9:c86f:4352:fcc])
        by smtp.gmail.com with ESMTPSA id y5-20020aa78045000000b0069048fe6c8esm3302905pfm.203.2023.09.22.08.18.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Sep 2023 08:18:28 -0700 (PDT)
Message-ID: <ce9cef41-29e2-4056-a60b-b0e4ee1cc17e@acm.org>
Date: Fri, 22 Sep 2023 08:18:26 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] scsi: scsi_error: Fix device reset is not triggered
Content-Language: en-US
To: Wenchao Hao <haowenchao2@huawei.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, louhongxiang@huawei.com
References: <20230922093636.2645961-1-haowenchao2@huawei.com>
 <20230922093636.2645961-3-haowenchao2@huawei.com>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20230922093636.2645961-3-haowenchao2@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.167.169 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=acm.org
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

On 9/22/23 02:36, Wenchao Hao wrote:
> Fix the issue of skipping scsi_try_bus_device_reset() for devices
> which is in progress of removing in following order:
> 
> T1:					T2:scsi_error_handle
> __scsi_remove_device
>    scsi_device_set_state(sdev, SDEV_DEL)
> 					// would skip device with SDEV_DEL state
>    					shost_for_each_device()
> 					  scsi_try_bus_device_reset
> 					flush all commands
>   ...
>   scsi_device is released
> 
> Some drivers like smartpqi only implement eh_device_reset_handler,
> if device reset is skipped, the commands which had been sent to
> firmware or devices hardware are not cleared. The error handle
> would flush all these commands in scsi_unjam_host().
> 
> When the commands are finished by hardware, use after free issue is
> triggered.
> 
> Add parameter "check_state" to macro shost_for_each_device() to
> determine if check device status when traversal scsi_device
> of Scsi_Host, and set this parameter to false when traversal
> in scsi_error_handle to address this issue.

The above is incomprehensible to me. Please explain more clearly why 
this change is needed.

> diff --git a/drivers/scsi/scsi.c b/drivers/scsi/scsi.c
> index d0911bc28663..db8b9e42267c 100644
> --- a/drivers/scsi/scsi.c
> +++ b/drivers/scsi/scsi.c
> @@ -704,6 +704,23 @@ int scsi_cdl_enable(struct scsi_device *sdev, bool enable)
>   	return 0;
>   }
>   
> +static int __scsi_device_get(struct scsi_device *sdev, bool check_state)

"check_state" is a bad argument name because it does not clearly explain 
the purpose of this argument. Would "include_deleted" perhaps be a 
better name?

> +{
> +	if (check_state &&
> +	    (sdev->sdev_state == SDEV_DEL || sdev->sdev_state == SDEV_CANCEL))
> +		goto fail;
> +	if (!try_module_get(sdev->host->hostt->module))
> +		goto fail;
> +	if (!get_device(&sdev->sdev_gendev))
> +		goto fail_put_module;
> +	return 0;
> +
> +fail_put_module:
> +	module_put(sdev->host->hostt->module);
> +fail:
> +	return -ENXIO;
> +}

Looking at the above code, I think we need two functions: one that does 
not include the sdev->sdev_state check and a second function that 
includes the sdev->sdev_state check (scsi_device_get()) and calls the 
first. That will result in code that is easier to read than calls to a 
function with a boolean argument.

> diff --git a/include/scsi/scsi_device.h b/include/scsi/scsi_device.h
> index c498a12f7715..e166d053c839 100644
> --- a/include/scsi/scsi_device.h
> +++ b/include/scsi/scsi_device.h
> @@ -389,21 +389,25 @@ extern void __starget_for_each_device(struct scsi_target *, void *,
>   
>   /* only exposed to implement shost_for_each_device */
>   extern struct scsi_device *__scsi_iterate_devices(struct Scsi_Host *,
> -						  struct scsi_device *);
> +						  struct scsi_device *,
> +						  bool);
>   
>   /**
>    * shost_for_each_device - iterate over all devices of a host
>    * @sdev: the &struct scsi_device to use as a cursor
>    * @shost: the &struct scsi_host to iterate over
> + * @check_state: if skip check scsi_device's state to skip some devices
> + *               scsi_device with SDEV_DEL or SDEV_CANCEL would be skipped
> + *               if this is true
>    *
>    * Iterator that returns each device attached to @shost.  This loop
>    * takes a reference on each device and releases it at the end.  If
>    * you break out of the loop, you must call scsi_device_put(sdev).
>    */
> -#define shost_for_each_device(sdev, shost) \
> -	for ((sdev) = __scsi_iterate_devices((shost), NULL); \
> +#define shost_for_each_device(sdev, shost, check_state) \
> +	for ((sdev) = __scsi_iterate_devices((shost), NULL, check_state); \
>   	     (sdev); \
> -	     (sdev) = __scsi_iterate_devices((shost), (sdev)))
> +	     (sdev) = __scsi_iterate_devices((shost), (sdev), check_state))
>   
>   /**
>    * __shost_for_each_device - iterate over all devices of a host (UNLOCKED)

Since only the SCSI error handler passes 0 as 'check_state' argument to 
shost_for_each_device(), instead of adding a boolean argument to that 
macro, please do the following:
* Introduce a new macro for the check_state = 1 case.
* Keep the semantics for shost_for_each_device().

With this approach no SCSI LLDs will have to be modified.

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ce9cef41-29e2-4056-a60b-b0e4ee1cc17e%40acm.org.
