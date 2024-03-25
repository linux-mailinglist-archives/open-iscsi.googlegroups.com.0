Return-Path: <open-iscsi+bncBDJNPU5KREFBB56RQSYAMGQEMCIIGLA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAC08893A9
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:34:18 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id 3f1490d57ef6-dd169dd4183sf4772121276.3
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:34:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711352057; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rwh1+huGK7sqiTYvkTMOvDaCCEG128P6HKzMIEtC9Hzv0pMV0gzVmmxTAwutrv16e3
         EwryU6A4JeFGsjmOjBODz85mYurT116hVUc3oltt7bK3Fd+yjKkkG9hBNh14fqSsqx3n
         PDFwfB70zuThcJSdDyStbmXwAIRUZllSwZ5c4yRwkX/c0uYDhr8PABrv5ZguVybgDb1q
         LjnSEBuBx3JelhyV2jSdabR9x1Y3IiOogDKIrVa4kzy6rWN0XdsiZPeN38KJbyKlgMiR
         aa4oubRe2va+GZ2tnGwGV/fQuI9JX2Nui9h90bvLDEqX43xhLXEpk0jB0oD4yhbD43HU
         mpHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=uStuiu5LonN/ZsxfZGGnVhlHUesMwV4Ndc+8FQQEDZw=;
        fh=LVf/4Ys+FjwweA3+774LG3X2HnflZcseN9rvDqlv9Nk=;
        b=JokJDetvsVpEyOewG/zJUjKp6pCBrISpuRJbiQUKY6MSzh0D8zYV/foeXEB/a29o7z
         La0Nas05rJmC+KAPPHksHbjma2c+DPkWWrwviDTnNUnD76hjaddRKQcXw2R2Zrg23YJj
         /rK7r77pmzU57ps+Fb1tvEzj6d13K329G7wUSKjOuhNY3F5FmzpsVleQyQf5d/O2PVv+
         qW9LZkeqZrtk21oGHI+youPDh88ouPql4/kqhbvtZD8YyVFXTNsRub1c8DW0jMOUmSZ/
         IIRxrocrXA77WWHaPJb/CGFNLxs0akyiGbS/oRzI130BkpehQG4Z+vTW2oyzvBtuutwG
         N24Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WxcVi03w;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711352057; x=1711956857; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=uStuiu5LonN/ZsxfZGGnVhlHUesMwV4Ndc+8FQQEDZw=;
        b=YN2Gf7sgoARt0mWmCnfYab7jFro43jWva4TkUN8kZJDvDTJop/CVZ4Mw0B3clfsqOa
         jEQ0rB+Hm4TZsJ8N9gHCL3xQ9gWZ3AYsz1mhkZn8+jqCMEQ1r1F1tR5AVbQhrKkZU9wm
         VV+qqwOU2tt0QW46LattpVNoRGxCGzE6sLLpSL5MHiTjot0l3RiK3KfZRf+2Dr9TJgnB
         j3Ax1PCm97/FglfG/Js0YcjvDCT98PFuKUssnid9ZqOGycTEUUrspjM0MOTlh87MQ9vl
         v5sVlh+DBIJh+/hCBjGuc3HtdOS3lKd5jJxGUtD9RCghz/ViZtOu6njV2aNxt+0ucdW9
         knug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711352057; x=1711956857;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uStuiu5LonN/ZsxfZGGnVhlHUesMwV4Ndc+8FQQEDZw=;
        b=d1VXOPNijnJox6gxjTKpLPeOzkCHpnY+/Fj0YUY72N8YuJQfTtmBCf7YzbctVF6j4f
         1XGZHgV2vBJ1SUCWgoZ9K3bUQllcCuyqeXb7pvwEsNZklqaxWIHuw07DsXPFFVGmG/24
         3Y1z7RaAz7zAuVNfHD1W8PbLok2C11pBj+YSebJsPPtYCxG0KZ2icicniB/EhxZFpHTX
         3fXfv8HyQYVdItGW6uis5F8Ukbn1d9GjRlLK+gcagXMFsG059QJFnStPXhBCvUfwZNsg
         M8Nt/zeOM5GZoBWoSrpM7p8bPEkJA/i4bbMYss9jc76VDUPdAKPqa88Bk0boFx7emNmW
         i2JQ==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUdY/CHFxvfkmNMndXwpPPsVhrfDt9E4LtuPeAo1pE92wyib5SKksN1ET8MuhLBkKQFgtLQcL10xJzynY5j4vUuOEjvR3+w6lQ=
X-Gm-Message-State: AOJu0Yx3O3F7/nD85okcSekgf91R1FOE6TPnJQgNU5a9Ui2/8EvtqzqF
	FG8rhdYgiT+ejAv+uAUZPYf/552CeKn3t8G9RWyF04bcTalNRKSq
X-Google-Smtp-Source: AGHT+IGNBTfGKQHrFCFIHWvVlsQVG5AfoDL+nVsueyTnz+5jlz8HVT5XaXPBLlD/2/zQfkqWd6W++A==
X-Received: by 2002:a25:c441:0:b0:dcf:f9bd:fe05 with SMTP id u62-20020a25c441000000b00dcff9bdfe05mr4796695ybf.48.1711352057046;
        Mon, 25 Mar 2024 00:34:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:e0d2:0:b0:dcc:4b24:c0da with SMTP id x201-20020a25e0d2000000b00dcc4b24c0dals1255591ybg.2.-pod-prod-02-us;
 Mon, 25 Mar 2024 00:34:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVVWgMp/2T1zJe9TglihAPKMKZQYWP0sSxRYwmZt7ifFbBQkL5+u7EvYwioNsvkkiYC6e/Dj92TE2FoiSF8Xhnm472ioUqoiVQlBqg=
X-Received: by 2002:a25:640b:0:b0:dcc:bc92:6704 with SMTP id y11-20020a25640b000000b00dccbc926704mr4340586ybb.18.1711352054525;
        Mon, 25 Mar 2024 00:34:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352054; cv=none;
        d=google.com; s=arc-20160816;
        b=Kufavz1VyaENZoxiOZqw7/zsemVw9vsabSflLuE+UFWlSQMWRtVUA72d43MLYLcyhM
         1qH2GqBOuUakDXGZzZ70sZdVv+8z7NC+UbIQnks4MPedAK6Ztg0vV0Ap3MZl/wqVnZ/Q
         keWmFI8D4D7XqRZMfDcmkQE0mCaK5TURJJ54PUVN3vag2pcr/NZU3jZULvu3l5NdsJA+
         B3rcwn+HahpI6I/vaECY352eSYRi0j5myk3bT0t8zi3hq8HP0jEnXxI4TLXlQ/oyl+BF
         6YIMm0GfnvR3ERqTqBSbzpfK1nxnj3joAwz+z/O9xRJGqM64vqqgabGUcIkAKIDDoD0d
         GSFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=bDMkhTMRVNmEmmddHiNlZlQ95rtnliPJ2ruP9P2HPqU=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=XCrXDzWhLBvx8xp9dp9k8Pnnkr6GqeQiNk9qTih6tj8IiMSZnNlcYLacIrGoN3yU/W
         5uWXMe95uHBjv9sqbkQjTtPqXQZcqSuXdl8wU1cEw4K9Pp14zo5s/W3dDZQ+fPRAQBtJ
         Hc8hhq5KzF9gTsqeSzxL5uNbrxpadjGq7ftgs0wuyunz1fYQisJLP34bdhZJV1BF5rcc
         2oF0t9cXLNG0enwOhg8ZwFHUwI5IfzaKPYHVSr/tDsbNLRwEalYwemWfBI80stNI9WvD
         3p9NYyTI31vnW/mAU1YccYmG4eBfQPIZFxEhqWAQ6LJZDhHVANfzaDKpiQb+V+kGfxhf
         Z/NA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WxcVi03w;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id x202-20020a25ced3000000b00dcd162eec7esi434825ybe.2.2024.03.25.00.34.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:34:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0DAB260F27;
	Mon, 25 Mar 2024 07:34:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E85F7C433F1;
	Mon, 25 Mar 2024 07:34:07 +0000 (UTC)
Message-ID: <942dc890-9a1d-4008-944d-816f7a7c470b@kernel.org>
Date: Mon, 25 Mar 2024 16:34:06 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/23] scsi: use the atomic queue limits API in
 scsi_add_lun
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
 <20240324235448.2039074-10-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-10-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WxcVi03w;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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
> Switch scsi_add_lun to use the atomic queue limits API to update the
> max_hw_sectors for devices with quirks.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/942dc890-9a1d-4008-944d-816f7a7c470b%40kernel.org.
