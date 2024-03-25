Return-Path: <open-iscsi+bncBDJNPU5KREFBB5WIQSYAMGQETCTY7PI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A2F8892E0
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:15:05 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id 6a1803df08f44-68f7572bc3dsf67168856d6.0
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:15:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711350904; cv=pass;
        d=google.com; s=arc-20160816;
        b=lp6lq8dfjRdnb38nyHomUOZGaylGpVDDv++ldxzpPzHChcMI5HMCy4cJscBavQgwCJ
         1/HxUli4SWWE933PSQ6xHMfVAG2EzcCezg7VcPPcXiWyotNVBtL8V8EKmAkJm68qUD1a
         OmCS0bMNl1hXBogFFZvKTpgw5cbI34GytPl4HsfZ/VGBmQMkOgBrFVHYl0H44hOYQ7e5
         pAt/Sb8vuUSZPMby97lo9gHZGFmgQqWlz30aVJvUXUPRgNt2MAdFrqK6L2RnaP7WNP7C
         TAQwqsgIiO3mst3j94mtUziAbJdnGYxAgiztHOyrNQANBvLqcxbRELgNmi8HIQJJLkOG
         EyBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=1Fg5Y4YKMzZWizCmsOgKkEqqtnV/bAxlDjjmivmUifg=;
        fh=y6ikpSpC9wcTSfOgFCgdqRsOmojPdw+UwSVAjCz5mkA=;
        b=Hk6VAk/yRIkwIiZz+9UBuq5aDhe/7aNWS7cbuVAgRT7DUAdC4fjbDhDiUwhwJAwr+5
         v7isKhRcJ+W/uvc49FsSSqbU+AsX24jqO9VVUEuYLNVLjuVSNeXb4zjQ1pdiodtZX7k5
         GmCaafXzI42+1cSVBubFCR5zu3mIiTpG72vEEBreRt3RlIQVEVdmiQ6mEmulpDH00QID
         Dg5+vgutFsZmgcoaxTs3tzvfPw3lyUUbZvYDmBwZs0QLjdZo+l7fqcXs3qdUA6CPKXVZ
         3s7mqK8POllbFLnee6iqO3t8ozwdP/DHjLY/e32SRFCmpuI9rGpYskftdRyOervHp4TI
         UgzA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Rtrmh5Sf;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711350904; x=1711955704; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1Fg5Y4YKMzZWizCmsOgKkEqqtnV/bAxlDjjmivmUifg=;
        b=fpj1zIpg2dyDiRD6hQte06scHn2+SkNyMJRI5/E6Mzicu1cmWYM/qa2rRQQlFBwKh8
         Z8L3DfxlKIVjCyCTbPkfFxOy2u+nKXy34n1bRnWmliknoE2OjSXgZ+C4r0tPX3WT0PR6
         9eXELqd89ADYGOf4IIFk5gJFodD3GhmQ7yHCNlXwzu1JnD55fMkaUtNA7x2R617Dn3uX
         5kDtHMZxqMmBuEiNbcixQY1jB4GIDXMSbsHzdAWn9uWAWyRspm51fyKcvJQ0dMokHs1a
         N3oBK2JXoQRM/kxoXazPKqOF+cOd1iztNS5StgcBaiMirFfxjcO8i/PrSuQ/7e7t3qbs
         YFOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711350904; x=1711955704;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Fg5Y4YKMzZWizCmsOgKkEqqtnV/bAxlDjjmivmUifg=;
        b=jTqWhP8PslH15L90UeWQ24dktTabVY0NmmOPPIiqHHfaw11AU/EqXx5CRf+Lu/4/Hj
         MWPAAPhQ3Kv3GO+RiPYEdYloQrbuN148bA1ClPyqnizY8Xbc/Sk+/5c9f/at7U1kOTvR
         Fj4SyRWk2t+pbjG1XZijkfv8Bo3gtHBpfoRKipIsLltNb4gc5RplPLfa1BqwbjbEkEYt
         UJ09EKFPGvjcFRyCx/5gYNyXVqxZmYe06vCYX1tWTdAvEazJe30x2UCfHU1YDEsQbzTy
         kLYvRZHWysxjWEYwxFZaihr46q88UkHyc3iouTxHzrkA/rJdPQrn0jOzHtAf0Jlk71UA
         y6Fg==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCVz462lXeEKT4f2miWCzarmLItL10f0QuakBv4cD6J6ggSdfT8qwgl5hkw8o2qffMkKXTAZUKL31XPsWmw/X/3NkIf+BU9onEo=
X-Gm-Message-State: AOJu0YwfWID+Ph+KRW2QLWslfB15AmLxcrEkXbSw9kkj5OUQs5FbIscy
	y7JrvPl+ACSEo4QkZKrPsIKSZKp4wJyGgYkG4IDHS34kZZq0P62x
X-Google-Smtp-Source: AGHT+IGeSBOn8LQCusAXhiWyMdLsvmFXlTZvecknvuCpikYBdoSm8Fzm6wkRjdeU3z4qC5lm3LUqJQ==
X-Received: by 2002:a05:6214:410a:b0:690:c7a5:1dc9 with SMTP id kc10-20020a056214410a00b00690c7a51dc9mr8697148qvb.42.1711350903856;
        Mon, 25 Mar 2024 00:15:03 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:5ceb:0:b0:690:c950:c414 with SMTP id iv11-20020ad45ceb000000b00690c950c414ls6089971qvb.2.-pod-prod-09-us;
 Mon, 25 Mar 2024 00:15:02 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXO9ohJjPU/OUjiuNnDMn+O6kdnji98//b1HwyHMbhSYqB8Spsh2kxMvdJaQjl3IG9mDJpYRza1RJwSrKBSGQ9ikggP3LiQWbIWbqE=
X-Received: by 2002:a05:6122:251e:b0:4d8:787c:4a6c with SMTP id cl30-20020a056122251e00b004d8787c4a6cmr4036828vkb.5.1711350901945;
        Mon, 25 Mar 2024 00:15:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711350901; cv=none;
        d=google.com; s=arc-20160816;
        b=u9Dp+II8N6zscvCd4c+Xu0s789XK3AhwlBkl9kDu4P3nDO5Pj54beG0Yi5HbUW7mdk
         YnKarScsvS5gf8i/P0xbBBpc7qA0p/lGgbZGHbvjVA8VALJ/ZSbfkegnntCKlGtjsMjR
         u+anCK6vv406O7jn4XqQ642NWkeLV/LVzKRGP8s1hC/bnzTrfVkZ0yGPoTMo3fxspBbM
         xX747Ue7Shu7Uz52a0/KQ+wrhzl8s9oJWQZ/hzLDnhizp6YbldP60v48Jno3Hc+IaXf/
         R21+1tBFn++WMiki87OdF+uGZPwf05xCVE4EWBsCH8VmwJSwP5IWlOLMZAHHFCL4qCVh
         3Uaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=AeMugh8m302KzQU5N+2VJxdLZMrVeYAn3VmTClacAdE=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=qYfY6qVBKP+vPqI20+lqdE5O6tPuUIEWdKVWkPR39iydmkxxFQWhMeHy7k+lGQIybn
         RfPl3aKh5DUXf+6vEdZSiD0csc5FRir/LTtR0icTTyj/0Y799GPmhRwv2FaUJqHANzyr
         CblJ5bofiXYSQLMjavkF7wmjoXCRncF7fNsdVeGvir9vah1HPYkg3SZEhv3AEt9dLz9G
         h79KCA0lbG/WGLf5EiLyCRxkVlw0DldRhZys2A4RwTP8j639hKLMxsh4pdjV09JIyRmN
         qORoM8S7IFtlWCnmLHgyHvovpQiAH9YVzKFsH31xCUT5vKJcLFhVC9Ju74VzvpUEJxTc
         W7vw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Rtrmh5Sf;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id pe22-20020a056214495600b0068f10446451si541830qvb.7.2024.03.25.00.15.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:15:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id F32E3CE0ABD;
	Mon, 25 Mar 2024 07:14:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D80BC43390;
	Mon, 25 Mar 2024 07:14:52 +0000 (UTC)
Message-ID: <b8346696-316c-497d-972e-c76d897a1c87@kernel.org>
Date: Mon, 25 Mar 2024 16:14:51 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/23] block: don't reject too large max_user_setors in
 blk_validate_limits
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
 <20240324235448.2039074-2-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-2-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Rtrmh5Sf;       spf=pass
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
> We already cap down the actual max_sectors to the max of the hardware
> and user limit, so don't reject the configuration.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/b8346696-316c-497d-972e-c76d897a1c87%40kernel.org.
