Return-Path: <open-iscsi+bncBDJNPU5KREFBBKGVQSYAMGQE4QGHJTQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3e.google.com (mail-oa1-x3e.google.com [IPv6:2001:4860:4864:20::3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C80DA8893EC
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:41:31 +0100 (CET)
Received: by mail-oa1-x3e.google.com with SMTP id 586e51a60fabf-229f4995573sf1521202fac.1
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:41:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711352490; cv=pass;
        d=google.com; s=arc-20160816;
        b=kO2vNR0iebTNi7IWCLw5yva1GZVELBd6tjIjiU9XRaox4fQIfQreDkaqD7QrPj08uv
         GoMCiThSOkwM7enDTjWEzbv4MneqR/IK8LBwLPR3teTqXYGZP2K/l7p34rZdz3NS4ZQ1
         u0dIiB8O/tCUEgf+aojhYGFkYvxPc4i9kE2N9cyA1VJTaEN5tlWoS3vn22lYh04DnMmz
         K1s5Du5ePQIJ9uPEBsAPAVq2opN5kn5gxRLu3xgKwPeaeqxBe1VpvzWDi9jJHZH3Frip
         AnY9bfJ0VWVrCtEguJJBtx/yvogUN2eu4iPeHik4MrEJf2jraZZJR1byu14m6XAzsFfM
         34mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=h8JXrpgIyIVAowjI7gizbUf4CCH4cGua3g/LwAWvEOM=;
        fh=sGO05TXVjzQ23UcSJ8AIjhvQAlElKLjdXdHCF0PADtk=;
        b=OGIFZFRbhpYw2LvCOUi5pmF6z+pUuZBHOjtTEMv3D3wMrIxrAq6To/AaKBnKzHDZxU
         MtWp1upuek5/h40SNB2v4p+T2MYtXEHOJMQs6qer/l5EW+6PIUCK2FlnzJxobVfCYgiO
         cfR1UWffs8asAcbmlauOwqutJ9AcVTrUf3J8Icyb1gwE8QkjPlnZfuCTGss5taVWofPk
         /KHF7TGII3b+oVzSHLsdHN2AR40kR1N9lBKJv+UG/Hq4F3I5sm3/cFHNu/V5BKXUJyh9
         nacF13Lph7oqSpZ3A4WDlQkraTRzL0B4sv/x973fnCzhEzPc2/oK1FjzQuFhGPXrEKYL
         1MXg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jUQCtc4+;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711352490; x=1711957290; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=h8JXrpgIyIVAowjI7gizbUf4CCH4cGua3g/LwAWvEOM=;
        b=aqJPZO4qNqwrVsjRRlNbbwPIO9UxwB61vY5p+82Evn9U+fF0S3mVb6RByPgU9qP04E
         CyN2/VllpVX//FC0zXqaU72CES9SmLmIO0khKHr957fC9Yq4zAdBFOvM0Bi+N7fLsg5g
         EzWWO+Vyk7kxUYZPhVrA/i4ZOU55Q64ZWf0w9Mt/8R5qU6kl9PQm0aBUXOOZTd6i8nQW
         puFGC4q56LmM36hb5MjPOlzclvkBrlZfHo8YwFuznLdLLsuxNTGQZhBsprSYMZVcdaUs
         b8plPBaWHxBEYwZV5ZYyKz8iXvReDzQxeSfKqp4tivKMXqHOLCYMhUtYuhyIt2euik60
         OIgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711352490; x=1711957290;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h8JXrpgIyIVAowjI7gizbUf4CCH4cGua3g/LwAWvEOM=;
        b=lM9o77UjDTsnBtUCQYZ/eWoTsmkpdOEfX1jkFO1aKtO1+kql+y8kaxAPm204RdG/VZ
         ZITZj65vtqj3C9xEdenvhvmsshkEFyhz2GRs15+2pO0Y/6lU4hv9fjUCTvyhZrXw4CgK
         7j3xlEwdY8hyEHM66IJa03cWLChdPU9gfs8J1R0JA4p1HBhOnqOTmlTQ9Ia9KmPPvuKL
         AtWraXxZJySGhgljcn9aCqmIDSwEjXRtKb/NBoaCPUj41YgUxdxakB6l4Dlp+OOLYYKm
         l4Z48wyVX0avavxkDU3TedLUwLe8hHzSCToY48CDpl2gFXzPoFx/XwJSeAKv0AzAZ+pK
         EAlw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWTYMY2GvmE7LT1JrQkOl4QyG2eJltrjIn3hUrLMZJWfKf7ghJF/ukzfZv6FzKABGKtTvBTg/MOFSlfO/RkpOYf4ja8zDRCSMQ=
X-Gm-Message-State: AOJu0YzDmTXFLQxHAUrKNcCwZt970X/eBrsNyWu22/ThQ50DIFChdU5x
	F+K7gWdjRPssxD26f2nc3/8X+DqSaGZYjD73SPlyGMeiu5m7GjNt
X-Google-Smtp-Source: AGHT+IGw7Ptp44WlRAeR0H5BtbM/t6TudMs2Cub+a/FENBm9dt2jSHJLPMFECQP+KXkmQrz+yDW0dw==
X-Received: by 2002:a05:6870:218e:b0:229:e281:49c8 with SMTP id l14-20020a056870218e00b00229e28149c8mr7318555oae.15.1711352490284;
        Mon, 25 Mar 2024 00:41:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:18a2:b0:6ea:afca:4d5c with SMTP id
 x34-20020a056a0018a200b006eaafca4d5cls233799pfh.0.-pod-prod-02-us; Mon, 25
 Mar 2024 00:41:28 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVOCQM+eEDVj6988QcJJh7EeI6ZSmns8AKGDfxW5RdsEcuMkdNwt8AF8osEJK3k0uZCw8VfShgRjjOolabf5gEp6VVAhcfUyiyB2Wk=
X-Received: by 2002:a05:6a20:da9f:b0:1a3:6f54:fdf6 with SMTP id iy31-20020a056a20da9f00b001a36f54fdf6mr5960865pzb.10.1711352487933;
        Mon, 25 Mar 2024 00:41:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352487; cv=none;
        d=google.com; s=arc-20160816;
        b=TleXKR/d36sq61wjx0XPuzWoFGeyJaR25R8ZPeDXDV2DKuibNY6ZwV2O52923l8YK5
         +YBV6XD10kmG0MHMbGcgln1pXdk9q5NuD9GvrdbSh0KN15OJGBypGZqOyRaRAxpyPDma
         XEGG8I8yMzgScqQTsBBbOczOU4rYTbk9gT4PRirp4w1nFy3DdncfpswYh2j0J0T4WxpE
         qxm7GDMM9HJ+vfRkmvr42O6sWcn0eMFLbiTh6Vbhzy4uoyCaeDVSlk3jS7D9DK7DrHdH
         1jiRLzGzRrFVLzY/jJYGO+ye9InTNLg8gK3/bFLZOXshGMWc9/AB67vSK0bLdpTdj1gr
         JC9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=kIAl4YRWMXh2yS4682/W0TMipGEqDQQu3UHCkJvJ6X4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=Age3YJ/L8JsX4pLulAi3yF3BN8H+N1ycpZrwgc9bBsG3bFHQvVtd5v8YsO0uAGg4oA
         IG/tJbTVRNaopKr0CDNGxKaLz+BC+athU+bTtplZUZPoAKkDkjSVVGayYHH6gj12lmVm
         xhsuiMDw70sBhoDz9hOEnM607rp+qjaYYMtLnyu9xNGflom6yiUIgD9EFtAHKjekrH3/
         ciiAnYgsfcXImFl/WmuTo3eCdl+OuukZH5nkA4s0aOJDuGYHroBLUIbYbhfSbWGwm0/l
         wsxsLvNvi1LmJVSf5juSgA/okOgZzHsJLvUixgHHP/zTSmI7Im5Xl8cc4fpakJjelpcL
         EkvA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jUQCtc4+;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id fw20-20020a17090b129400b002a05989298bsi141373pjb.0.2024.03.25.00.41.27
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:41:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C4697CE1079;
	Mon, 25 Mar 2024 07:41:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20D2DC433C7;
	Mon, 25 Mar 2024 07:41:18 +0000 (UTC)
Message-ID: <b55b31ef-05ca-4487-ae7d-6d107c84f76c@kernel.org>
Date: Mon, 25 Mar 2024 16:41:18 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/23] mpt3sas: switch to using ->device_configure
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
 <20240324235448.2039074-13-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-13-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jUQCtc4+;       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:40e1:4800::1
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
> Switch to the ->device_configure method instead of ->slave_configure
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/b55b31ef-05ca-4487-ae7d-6d107c84f76c%40kernel.org.
