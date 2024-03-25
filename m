Return-Path: <open-iscsi+bncBDJNPU5KREFBBD6UQSYAMGQEDD7SHZA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2429A8893D3
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:38:59 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id 98e67ed59e1d1-29c7932c5f5sf2835093a91.1
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:38:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711352337; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ol0F9Nh/ICUQpDG2t+56K7PFWj7O2xbde3FbIQuSk79hWnYGOxN7OE3Arni2sUR1cb
         0ItcerX59Me7LDJourmqWPhIURK+sDOyDi7YuiS+WkpufeDRqBdfeXI54vhaZFFhEAKW
         WDDbYgIjeTXv93vUWdOImkFsS8VlE6txi8DHut+z4FeyVcIeYSdQy3ZMBwBx4a6ynQP2
         +tpGfVg7JSNmwgQV27n5GVG38yWTp3MSKfmxpJetF4cKgfViwi0t71f5m1YSrutf0jXy
         ThA+22BWdogyVNJ/4S1hsCCmk0Y9RnlcmyoBo51Hy8LwW1O+sH9iVv0wVzOuxtbt3Xky
         ma0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=Lat6z4pE12Pxzn1GPUXuAcUqW2MYSPkuXgrBrz6RN3s=;
        fh=HMK2JzWmOu27aRdWGDxBQtf+lztInwoRDrhAICPP5+w=;
        b=rbbV4aqU7pU7fVGtwe8NKix6lpsigUb+hPwMttoykFogGkfUqwTijJZrDHoin2kQxl
         K9v3v+SKJirH577FBs1lExwkPH2Ur8ggRVjdir94KBAxJY5DjHVyDaJm8ROxf3rzxgNu
         NHakgl7LCdA+7fc96cjVFPg0Ees7xaxmN9wW0ktoIASSLVXG0jFZga3xc8loI5dxNVzL
         RK+XNi3zYZmn9eXD42nLDZ+9itUgWP1FtwZZ/0DWfQF5LaMAV8T/geFx3527HXbXygVO
         Rj41e2D8ubJ7YGbuxuH3wlPAI4A/e7CDepC5sogWdRRamEHfNVVWeAVSnxUwcnZ7oJS1
         fCNA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lwMMElU2;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711352337; x=1711957137; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Lat6z4pE12Pxzn1GPUXuAcUqW2MYSPkuXgrBrz6RN3s=;
        b=P8/0M5O8uM0eU8cWsCtbw+N/pPEzpr7tO6qF71GKc5oP8lrU9lcm4xb4V5Pja449zU
         2M82EvMfr0b9olSAKnY2ymG+0Cs2/rKesli0cXGfYNRbFf2SkVoVtPuTpeoNltanxwQk
         2c5F0urMieNM9rVQqgC/7EZLhsNTDp2n+cPNYDecCMr/7C7yKUlgvoJiDnTW3RXf3kc2
         0OvYvHyLLKcXKjvNTT3Gz5khTPD0Z9TI+9WBJ3ZYYFYZlFXskWyZo4kS3+q0ccSxHJcv
         84+oCxXT801bVGZWoTLDMGn7cqxKeDpeWWBbrQdVxzs2CL8IRCdxvYJmLvXEjsvBdj/P
         k9Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711352337; x=1711957137;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lat6z4pE12Pxzn1GPUXuAcUqW2MYSPkuXgrBrz6RN3s=;
        b=BNe4v9fcQDBDiRnQnkNjgdQmxC6XcnY6feYHhlAoFUlGwLGMHwvl1UTvtqCCoNJpG2
         hKNnWTi84Yb57rmbNQ9Wy7fnqZAMf8RjnGR5ouvEDcK9WMuQd0SSYkszm1780aPTOXFg
         VaNZzci4qlLDFraHcvyVZZU6jTaGLJWpJ8OlHkCDz09TY4X8x8kDpH5GjCQbOVcIBjhb
         ovuKAR/MtSYU+la4xY3xHWJbX8TmpZ9VUmjwVIdfspC/AkfFokXQvmSvR0M8hViUXZ5a
         BKakYlktn8z9VGFTOBLRNVoqAP2q/4dfLxapR+l0d3ptm+tqzJ7yxmkvRSG2Z2XT/ms8
         CRhw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCVJ49jDdy0IQ98r2AU5X3bqx4JaAEo1omDs7QAwi8dj8Z5pcI84Z4yvqSnRJI9N4eSVCEcMxeL+opCZ5bTyRgrha/sSTb+f0SI=
X-Gm-Message-State: AOJu0YwxsaE2pvUmIfHg51V4P13gmhHOHYAnZtpJEu6gyYvjPniFEBfg
	QUOfqzOui7IFxFUfkDA3mrg7JUK/qr1eMR1U1DkkATl95D6I8Gnp
X-Google-Smtp-Source: AGHT+IG32pnOpZdj3oeff1uFsH5MDLPZuLTDqYZ+hetvFtQU1IS4fGk6UmhKUAIRRByB2P78kcYzZw==
X-Received: by 2002:a17:90a:488f:b0:2a0:7895:f356 with SMTP id b15-20020a17090a488f00b002a07895f356mr1024756pjh.12.1711352337408;
        Mon, 25 Mar 2024 00:38:57 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:db0b:b0:2a0:4ed1:e784 with SMTP id
 g11-20020a17090adb0b00b002a04ed1e784ls917140pjv.2.-pod-prod-00-us; Mon, 25
 Mar 2024 00:38:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVl8+k+xZ6WhXfuItVpjvf9kHgVEup4q9uNgiH+bY1zZnOugd2Hj1Dap3Uq2eHjDqWh1p1gXGFDm/eeEwxcp7yhZQJhd4Z+UIQnpaE=
X-Received: by 2002:a17:90a:6c02:b0:2a0:3f0a:a863 with SMTP id x2-20020a17090a6c0200b002a03f0aa863mr7995435pjj.17.1711352334873;
        Mon, 25 Mar 2024 00:38:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352334; cv=none;
        d=google.com; s=arc-20160816;
        b=P6rvfeP1DbabMVk9MvIWsGuueSky3F43OiAL9vCuehWws8q6J7hXPByFq7AScmKgQ8
         d8YMnao2N4hEFovh5BgNWek2bYCRQ23vAUF3Cxw1kcjv7Y1bjepwy1ebio07BwbxE+Ji
         UMM0EQOkHVYLnEBU0Gs0QTT9CIE6WbAO7nIpDugb7a4S0Gthzrcv/WR3hQfYYSg1cYX5
         iyiQHMH0YunLqTHzZKRNvcRtWTR1LfsWv+g2qhIh1vUCL5FbLsW8GGoss8FSO04m/+Yc
         u/YVCdqp6W6IT7FGbINO2UIGUBse+xRbFGbO2vH+UKTyrNVLPkeYRWL2YMr3qE67ZhZX
         N8Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=F3kDyxMRVFCK2GNzi8RVUjQziStu/ZXl6Kb4XsAVjoU=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=OwZ3tdEs/1yxVR/kCFXDTglRclIMgssRGEvm9/uFV5T239g6S+8Mke2wm2EVgzTvs1
         vukboDdo6GhbKWEVwwjXRSAqhgALPK9LJhWDnJI+IOTOQuNau2GZ5pdzq0Nd7SRfccXk
         debiCN+oDHjH8sntC5nKA10ffj+l6zF5/Cz44BYX7tnlepzhGg+j8W4abCPFe5dkWe7P
         j9y8Gp/TVz6OwccEP7wwVKyy/nvKRMsLiXXCUwNVLjfBsPMO2Ww212BEZh7fsUjfPcBX
         pmoawW8FHtEbzGoO4tn8V/8xXozCqUGNJygW2I/+dnCr4gFvUUMo/AEySEALArvvNhxd
         i2Sg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lwMMElU2;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id bw24-20020a056a02049800b005e430f2514esi186316pgb.0.2024.03.25.00.38.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:38:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A76D0CE1056;
	Mon, 25 Mar 2024 07:38:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C484C433C7;
	Mon, 25 Mar 2024 07:38:44 +0000 (UTC)
Message-ID: <6199c70e-f0a9-4756-b3fb-106985c41ebf@kernel.org>
Date: Mon, 25 Mar 2024 16:38:43 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/23] scsi: add a device_configure method to the host
 template
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-11-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-11-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lwMMElU2;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 3/25/24 08:54, Christoph Hellwig wrote:
> This is a version of ->slave_configure that also takes a queue_limits
> structure that the caller applies, and thus allows drivers to reconfigure
> the queue using the atomic queue limits API.
> 
> In the long run it should also replace ->slave_configure entirely as
> there is no need to have two different methods here, and the slave
> name in addition to being politically charged also has no basis in
> the SCSI standards or the kernel code.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/scsi/scsi_scan.c | 33 +++++++++++++++++++--------------
>  include/scsi/scsi_host.h |  4 ++++
>  2 files changed, 23 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
> index 699356d7d17545..8e05780f802523 100644
> --- a/drivers/scsi/scsi_scan.c
> +++ b/drivers/scsi/scsi_scan.c
> @@ -227,7 +227,7 @@ static int scsi_realloc_sdev_budget_map(struct scsi_device *sdev,
>  
>  	/*
>  	 * realloc if new shift is calculated, which is caused by setting
> -	 * up one new default queue depth after calling ->slave_configure
> +	 * up one new default queue depth after calling ->device_configure
>  	 */
>  	if (!need_alloc && new_shift != sdev->budget_map.shift)
>  		need_alloc = need_free = true;
> @@ -874,8 +874,9 @@ static int scsi_probe_lun(struct scsi_device *sdev, unsigned char *inq_result,
>  static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
>  		blist_flags_t *bflags, int async)
>  {
> +	const struct scsi_host_template *hostt = sdev->host->hostt;
>  	struct queue_limits lim;
> -	int ret;
> +	int ret, ret2;
>  
>  	/*
>  	 * XXX do not save the inquiry, since it can change underneath us,
> @@ -1073,22 +1074,26 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
>  		lim.max_hw_sectors = 512;
>  	else if (*bflags & BLIST_MAX_1024)
>  		lim.max_hw_sectors = 1024;
> -	ret = queue_limits_commit_update(sdev->request_queue, &lim);
> +
> +	if (hostt->device_configure)
> +		ret = hostt->device_configure(sdev, &lim);
> +	else if (hostt->slave_configure)
> +		ret = hostt->slave_configure(sdev);
> +
> +	ret2 = queue_limits_commit_update(sdev->request_queue, &lim);

Why do this if ->device_configure() or ->slave_configure() failed ?
Shouldn't the "if (ret) goto fail" hunk be moved above this call ?

> diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
> index b0948ab69e0fa6..1959193d47e7f5 100644
> --- a/include/scsi/scsi_host.h
> +++ b/include/scsi/scsi_host.h
> @@ -211,7 +211,11 @@ struct scsi_host_template {
>  	 *     up after yourself before returning non-0
>  	 *
>  	 * Status: OPTIONAL
> +	 *
> +	 * Note: slave_configure is the legacy version, use device_configure for
> +	 * all new code.

Maybe explictly mention that both *cannot* be defined here ?

>  	 */
> +	int (* device_configure)(struct scsi_device *, struct queue_limits *lim);
>  	int (* slave_configure)(struct scsi_device *);
>  
>  	/*

With these 2 nits addressed, looks all goo to me. Feel free to add:

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/6199c70e-f0a9-4756-b3fb-106985c41ebf%40kernel.org.
