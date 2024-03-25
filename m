Return-Path: <open-iscsi+bncBDJNPU5KREFBB2OVQSYAMGQEKRVQUSY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id A16498893F4
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:42:36 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id 41be03b00d2f7-5d8dd488e09sf2767832a12.2
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:42:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711352555; cv=pass;
        d=google.com; s=arc-20160816;
        b=XuE7XnoUJXWY/mGLxJamMu3MOMSS9KG4RaiKcpCv2fDeLsfPME7W8RheDxI55KcOUt
         ldWF+eusm8E/jP/shYihvhZ0Kk3xxDuZSWeybR0xYaN9ugZz3r6qWhMv8X2t/oy4xEXV
         M/XVHjelvzsr4RQu/+yV/IAiQS+KKu0VC4nK76VO+r6CXOFaT2FutoFF07PqgpKu6jz7
         vyvd6Mi6GFVi9K7a3dHZhnT1Hkm9iR9wcXDFbHPQDNEam55eWQRrdtUrRwUgud53VAbe
         d5C6c32T+KQcNDDI5TJWquy7k+K2aUYvoKdKqYZGhNrptrZIDyJ08MP6qXlh88DKB0RZ
         53vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=AfiDfolcORlDz1GifDet8gPBkaNP9NR7LhLlOGeKnHE=;
        fh=mzKFmXXr9eZHLN40i7FzdKGCQQ+IaSHENbJT1h0i4R0=;
        b=fcZ/rcoSTI5NfBMXVCcaDbJUsgiE2052yh+aS+DqzC4IrcA5T/RUOmCFOGTaHzzj46
         AM++8+nKzigjZsf2+59BymVaIAIGaaAWUEU7ge3mE22hZ+d8XMYVBOnEeIw19ADYUaxt
         rwDypI75Gr2kNyq+opm3BTVXSWN2KN0zzMpkyRa2OhqU+ZCz0yFEBVqR+qbhdCiJnWl5
         52GmrkoEz/A2VUW83habRtdNgvTV2LsG5RwiRmezd2+n9r7e1uvEZ6ueny0JRa8RiZQi
         am6cbZfW51N/QnceFtgyYgj+RxN5QwdlvRKyRAfAertVWpTcSMmcKNbV7TA8/u5u3Qx5
         90uA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fdrhBYjw;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711352555; x=1711957355; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=AfiDfolcORlDz1GifDet8gPBkaNP9NR7LhLlOGeKnHE=;
        b=W9lVucfHpjZenNvMmLvxjsqQq0TG5ayM7uphBcu+pK+7eb8ajFdcRl5ALVOLkqxGaO
         9jyCzSJPczpsdlYtxY20q+++za3GYacwsBYX85GJpPIYDt6F6n+F3iE24Eludagm4sP6
         lSKfkZqvCk2zgdBpgz7EsO98cXQoewt9ojpVxkE2js3P2caLoo7hhdOwp8vae9DPyM5k
         jaAQlzBNyRHtJyVVr/jBneSE0eT1p6RAnuu6/2kJmNcky+IoClIJgLw1SvrfPrRjBgdj
         29IzK8s5IB91rJgsS+LaE+AoYp9fcxPwRGv2Rd9GomaicvlA1HTT2jp7MouhzpvN5JEa
         T2pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711352555; x=1711957355;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AfiDfolcORlDz1GifDet8gPBkaNP9NR7LhLlOGeKnHE=;
        b=bo1GxCApSS3NwyUFvn5OptihVNrlnevLYKnarrn4rNUp/zpqYJOIU0laNR2YSJCBYZ
         iSqb58mRutpLeCcKfGW8fm9bECAD4+R3aoQb70LY4psQZApjOv1woY+wpoR4KXZeuq3e
         Nhs7+YQukSkMwEbksvmjSC4IWFZQEgSzBnEe99uDs2/QrYCZYXvTFy850OhzQY2fwVfr
         AxFgOXjGjTrKIplNv2liZrHotyLD8mRSRijp7nPYh9X8ZCasKRdmYV93/5H0s/SakgBA
         OHpPIRiPmoXhyGW4hzgiAgj+EnnLhBZM0mXbFaP6CqnnhL8HAiA4uB/sX/EAQsV7ElUv
         nHsw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUiaz3/spmg1r0D2cb8D35Q4bCeVnpZJwSxZ9+Lb0IHcNUWoxwxOr+lfakPomaWUeDUsreT4hzECY9wpBqP8QXZcLAhkrwZ6RU=
X-Gm-Message-State: AOJu0YzgWbKzB5egqKWJsaz5UnSbnegjuwueL0yniZamF7S5VGPOY261
	zNwUWDci05YLbAxFZHcuPT92XUCvjGlhAwCdPPh717eCkODMOTpY
X-Google-Smtp-Source: AGHT+IEPXGhpDrOWxS7ZuMRFynSxTWsSUdNzSg37mGM40IjAzq1g+m6RZwQ9Zz9oKZjsH+GYWqCOLQ==
X-Received: by 2002:a05:6a20:43a0:b0:1a3:a0cc:de91 with SMTP id i32-20020a056a2043a000b001a3a0ccde91mr8718049pzl.57.1711352554945;
        Mon, 25 Mar 2024 00:42:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:6708:b0:6ea:88c6:1f11 with SMTP id
 hm8-20020a056a00670800b006ea88c61f11ls992473pfb.2.-pod-prod-06-us; Mon, 25
 Mar 2024 00:42:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVatuEd+10NkQF0WAJAlIcSxLy+bP94JfV1YQ4qmFRe4BNhEKvMQpnmAwmJ67/RfsUxSUm/3eZW8ji8oxeFXx8N5vnF6VI+TsyBUXk=
X-Received: by 2002:a05:6a21:78a7:b0:1a1:6803:69a3 with SMTP id bf39-20020a056a2178a700b001a1680369a3mr9176302pzc.0.1711352552409;
        Mon, 25 Mar 2024 00:42:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711352552; cv=none;
        d=google.com; s=arc-20160816;
        b=Ll6InOPCJE2a8vPkDaFsWcpy5EeksUYUuFj7+bcEUnogNBcd1POl7phGM3rKmpX/CB
         0Wxg8GO+IRw7oF0uzLrPZZ2uasNh3Beaw0625aHGX68PlqIEIe8W8rvlAhFu8AQ3iK7M
         ZcPHSbGVPvSaUS3fX+Xq9Mznl8EOePbJ+TuLewdYDlNnmLyMGK67VbmcZfcNeWnxQGcW
         0HZGE4ekJrXoNeqIIP3BJUk+1rcS5dkJkuTnvzhK+DxNqmGTZsE+u8EY5uyhxrwmHrxy
         czcSnEX+aYihrFAsWMwbHkACC1byCN04eo/gMgpmFMy9/ym7o+UASsghXQSvgQjQO0HB
         Tk/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=kIAl4YRWMXh2yS4682/W0TMipGEqDQQu3UHCkJvJ6X4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=gLL+kq1hTH55904+61na0HjBeveQye72qNEe/eYTuHVISAsmxXqsPHUqhDk3f6/HA+
         umO+mL/phcCieXFbDayYGGsQhbdJobGG1X1fxprB4IJVwsg0gAa/gSBofH/1HHxjIetu
         qLgH6z5XWRIPi3/myBAiwh4xji/YG6nwrzidKwldqhHkK6mgTZTPl7VJoypJj0F5pvy2
         KyvnVGQTOS61Zx0I6xr6vZzx3LR2I/8uMWkbrnaimeBEwudF4VsElqy3bI78XirPRnfY
         8FpGRAbGeTIAWNZdMS8dnetTcHDIsj7tsqkwPyEiqieN350ze3aYhZwywcv/WNqhWaoM
         hZfQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fdrhBYjw;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id m10-20020a170902d18a00b001dd61b4ef8esi303336plb.12.2024.03.25.00.42.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:42:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C96D560DC5;
	Mon, 25 Mar 2024 07:42:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64E6DC433C7;
	Mon, 25 Mar 2024 07:42:25 +0000 (UTC)
Message-ID: <4f9b30f2-2351-4d58-b368-46c65288aef9@kernel.org>
Date: Mon, 25 Mar 2024 16:42:24 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/23] hptiop: switch to using ->device_configure
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
 <20240324235448.2039074-15-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-15-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=fdrhBYjw;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/4f9b30f2-2351-4d58-b368-46c65288aef9%40kernel.org.
