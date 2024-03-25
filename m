Return-Path: <open-iscsi+bncBDJNPU5KREFBB5G3QSYAMGQEAV2BIXY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id BD51088945E
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:55:35 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id 41be03b00d2f7-5e4a072ce28sf3343307a12.0
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:55:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711353334; cv=pass;
        d=google.com; s=arc-20160816;
        b=ItjmMYZvqrgPUEiUMw565bFu0+F7nWMlAHBJP5dwk8kEZYcJL8h7WKwq5xZngs2cgG
         K1uBOTjFKTo4kbJnGvZBkkhiBI1tt1zk/GHXBhs4UABGDmpDMJgNy9ZwWiejFmwJcCkQ
         AnglKpb1C5QQ/As68bJQdhXZwA4QXry6JEBmD3m/4fn+LHtH3wB9aKMj/SPa0YRGMYmU
         6YO40pfqq26Q6mMez6Vs2scj0Gm7olxOslDeKXxoVOUgqqAwcHdy3xQ4TrD062HnRt4k
         hk406yaECJO2LxO+jJ9icSG0iiebu7za3010oRCCXjF32pr/BUuZyzU73C4ND+b7XTO7
         DfmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=sMATtBvPiYwEBBZfxYwfAS0TkmH4VbdzG+r1+4gBmzk=;
        fh=03d426Hugs/8jtbhpGN8Ty6vk5L1Ja21FLSvnIZzmpE=;
        b=tlYlhBwMrdOPtNultJciN+QBR9Al/KxT6yPKwx+VjAUGt6OdkWLoLuHpl7s192/p+e
         IuTArpAjP1iop1nmA7N86ss9Ucnz7B4i0low58PRFGtkyp2k2ty5yCNeWajxSB12h1c0
         /hvx1lqnEUoFXut9kFUzTB5qVL7rjwyyIChdac9BA2amqOSny3U3RAiNXk9nQwdARxnW
         hmXdq5nxZ1R0JhLiVzAYsTkUPTRQbmSNienDZlEFpYUkq9Q/cK2b+sY5MVvuNbWpDtHz
         T73l0Q2vbsulUaVPglDjuJIEOLsTYauMPGdm8tCNVUrUG2KsQw/8ApL5hkaeVWaNbLVa
         PJKg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i6pow1wt;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711353334; x=1711958134; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=sMATtBvPiYwEBBZfxYwfAS0TkmH4VbdzG+r1+4gBmzk=;
        b=BXeSZOCeWZfLXOn3ozRPz+doiwURmvN1HAKuUFxr/8c2zU1FiPIkV2aM6wgOSQSRvz
         v5QUnXsG6RIj6WWOQrP4UBIv+94j8noFpDEWvSzc+1F9H5DIRhn+PAocDfnNvg4vt7Sz
         R3p6LxEgALJJIduxkJsdrjNzTFIE8LGRDLyGuRwFtsOzFI3VcdXYoaItPr4cIuFAMOB/
         tlYsmGZOYbOEXDsVXk5Ai57571kVGJXj0E083vlFCcl6ZmE4sWLEK+QaL2nqPjtKc44S
         C5Td66X67B+ymaKRvnP/Dwxr7gkOvfovxg2W7jKakGrpdUPyXQCQdM2hsgjQr8XUkfEi
         u/Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711353334; x=1711958134;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sMATtBvPiYwEBBZfxYwfAS0TkmH4VbdzG+r1+4gBmzk=;
        b=VAwi95qVGBmOdzZGUymdQEW9t6zRZK4RcMxdfC7Zxw08QuohshMCaEPvLV54AITlFH
         idw/ihB/RKYwLw4Bb18JwcpDtfmngRbSqCfDyeXZm74DNQBBCGbgW7Fx7VMz3tLPJcIq
         hamNH+VweHhE+598LCDp0/NWfAp9uJJXdMRU9crs6eB4fA9skd5ZnVWp27Wi3QuFWx6k
         MQJ9VjADoJG2Pm0OR+L5zMOVT+6L6IvgC3au0zXYW/dLYnmPGl7mTVcopmN/T/gSwwIU
         YXegNT5FU6+qm4ei/SrRl5YVrAgJ0RSlqyBzp+9MokG4f9zDSbLtftULYkUdUONqjZlB
         CMqA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXdXtT5oOsGkDKGenllG4uhFueAWaDTURqhMtJzkMkPsIgzMNl7n4Dpwv2ZAJJ+raqSVQu/hozhxyuLqNSiu8IW1RpMI9HpZzk=
X-Gm-Message-State: AOJu0Yxktz3vz4Qa9V1mYkz+YDQmSE11g+01KRDKS/3hKm/yF3ZR5VKV
	JDygbRUnUbbSChk5d6uyi26pPZF1I6IEAWK7tkWqc6OdFOktpsO1
X-Google-Smtp-Source: AGHT+IGZLODIzoyQ7E6jeYLZwTu1LemV/8Jd+pki2OfwYqRJVutmsGEPJtlygTSaDSIc01ED2rvhUA==
X-Received: by 2002:a05:6a20:2a1f:b0:1a3:79d9:551e with SMTP id e31-20020a056a202a1f00b001a379d9551emr5467421pzh.25.1711353334278;
        Mon, 25 Mar 2024 00:55:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:d911:b0:2a0:41eb:6cd with SMTP id
 c17-20020a17090ad91100b002a041eb06cdls1395934pjv.2.-pod-prod-06-us; Mon, 25
 Mar 2024 00:55:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW7GM3n+RKQW1ht8llU+hyO3zDp/QMgPe7B4fsyJi6YqGqkZtLV/A5o8S5puT3605BCmXmUBKgKz/RVlo6SN6/GsOjjZaUVU8ZIs0U=
X-Received: by 2002:a17:90a:7e91:b0:2a0:390e:f032 with SMTP id j17-20020a17090a7e9100b002a0390ef032mr4847448pjl.32.1711353331402;
        Mon, 25 Mar 2024 00:55:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711353331; cv=none;
        d=google.com; s=arc-20160816;
        b=QEby+t9rHPBA285X0g/nPQ3wu3zitDDIk+58A46pnNh5a0v7+pF3H8q0ilhUKE3loT
         ap+HX2e5u5ijR5+plaGCBsYuyN6VXrymShEQxNCBxb/y0PmMh6RIcOMV9b2lr787BA3b
         wQuq/KjEUVqYBZOBpZLg2zJfLuhJC/CMSTRTF3K6XRdDRntA6/OMNxeKNY6q7MVoEFzX
         WXN9DbCG1gPUWkEElrkTtcyVPyrf0DfKahgyNf76ma/PjW2OFBn2A48EHHIVrrVOecVz
         2U3dlSMUI5g+eAgpKv7Yuw/z+ZFe3GDve6f/s68fBWOrXKzIt6l4v5bNMsMUrJuOr7TG
         KniA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=yaSamNLRAwstkAW8V1KJo4bS39aF7cxGVxsMhLWNqvo=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=Mw3oi9YA4jKYafhMOW36tGLnAPOpoLywRfIjkts21opd6EjNm2R+JHSMQJu9D0RB8A
         YiLVptcCd0s8uHC4zVPogDCmlhK83NnVUT5MK9/GtGteNSdHCRgJ8Ha+tlhrMWQcvtw2
         9O95OcBlx6/ReYrSu9KmJjbqgb9ACopLw0yb1bfFlJAOrWKo+i0wmS42Z+RqybLSQBFQ
         v6WZjynHK8TyxzbDtHAFjdBf6AE2aUMN3n66jiVcAxAOwmLdmXeoxNMof1EhpN4SqnDW
         xVi9GHmbE7kUAkpZCIzdU8xzq8dURkmCe42k37Q70nQ/dktziTtU5h0zU+RkBVrjJSa3
         p0kQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i6pow1wt;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id x2-20020a17090a9dc200b002a058fbc997si239775pjv.0.2024.03.25.00.55.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:55:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 394A2CE1056;
	Mon, 25 Mar 2024 07:55:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2865FC433C7;
	Mon, 25 Mar 2024 07:55:22 +0000 (UTC)
Message-ID: <43670f3c-b1cd-4732-9e0f-3cfb3ae9233a@kernel.org>
Date: Mon, 25 Mar 2024 16:55:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 22/23] uas: switch to using ->device_configure to
 configure queue limits
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
 <20240324235448.2039074-23-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-23-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=i6pow1wt;       spf=pass
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
> Switch to the ->device_configure method instead of ->slave_alloc
> and update the block limits on the passed in queue_limits instead
> of using the per-limit accessors.
> 
> Note that uas was the only driver setting these size limits from
> ->slave_alloc and not ->slave_configure and this makes it match
> everyone else.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/43670f3c-b1cd-4732-9e0f-3cfb3ae9233a%40kernel.org.
