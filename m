Return-Path: <open-iscsi+bncBDJNPU5KREFBB3WMQSYAMGQEM66NAEQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B440889331
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:23:28 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id 6a1803df08f44-6962767b1e7sf68845066d6.1
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:23:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711351407; cv=pass;
        d=google.com; s=arc-20160816;
        b=K1VrYrRKnNTHn75a03cnNZ2tUFGpyRGXW4eDzmBSaNdJ+5TVWG9dfIaknCbJiwxRlw
         8Oeq4mrI39B2/K/MmGzfvcEVvLY42VcIhQQQ2jPpjckxg36Kar8UA26On2XApw8c6cIU
         0xueQdpB+UHWAdsnNnJwh6TGjEf6ZnDurb0IEYTn9BFsYC5p/BAqyn0kW6+7zKA4vw+k
         0hjPJ5iub5LNEyeKU6CgbIpiDpQ0pUFE7mriAhBtFycAxv9LC0LSIHkNhDQ5vkfrT2dV
         u+fQJ4LLzHi2oWqASxWgkoo5lf3DeMdLmisNaxfcJt5CvtkUVmC7YzgdU2JIDVmR7M1f
         X9KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=57vqsNLccxtlfdVMfHaWo2+8Qq9jrpTPblJposGAXps=;
        fh=LW6e3LGFYNzzhdqYjMvrTH2Ji3NYp8lvPKZusBrRTkg=;
        b=AMaFRu/elWrhcnDTN43Y79pCBmB2CdwB+uZarIEB/01k+pnPdwJVgS2wXOdYnf6YwI
         U/S/CPxjxWWCu6/zNrU4jBdrrtf29FIGyEQYOMJhg51zgOyBjNy2yihNKqPiitlXLWBK
         KVWKeIt5xaSz85F7SFoY18VPwmxuVDswLYCTOfzdlZMJurq0+VHC1f/+0A2Be/RJ586v
         6bsk1bZfj/Fc4oCRkus7SRWBkgGp0R2c1NWc9wEV3SiL0jHbSrX8GipXt2UWRDdH1xGr
         mSvjRT2YOavgcJdKLMH6/tv8f1LyKmtIpA9O8L+fzjONBs+WBHM4cjN0YYpmAIDyDp88
         lr3Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cQqk9TXB;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711351407; x=1711956207; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=57vqsNLccxtlfdVMfHaWo2+8Qq9jrpTPblJposGAXps=;
        b=eVmH2/NloEDeYeZJNJYVKnRLayKekES0GkBZVbgG+dHzzYbIP2VuECdG8BbL+UNoJi
         Cz/YlgB1LRR+lpY7eo+gkKb298ZZNS0BrwUgwlQhWiregPPq8Yllpsh7N1ql8udXeUhF
         S9sfXZJ/4hkohFo8fUJ4Yc2vMFYammdLsbTlHYcnmm7t7KPG/dPXu4FKI8kXy4rLKSTi
         +gfnVcYky5mAhKjXugQuZfBTDuLgr4EbjAwEeZYJvqj61BvCOIUHAAZ0KMZXldwgkkVZ
         GPQefJ9P6oQKltphezIBNnm3R7ckVq5Bv3dwmsHSrfXxwmf6NvPRIZvaRF1VPlo5WdVu
         Atpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711351407; x=1711956207;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=57vqsNLccxtlfdVMfHaWo2+8Qq9jrpTPblJposGAXps=;
        b=B1I43kHRL65G3RFIdfqbSpQO+D+g0VpSiB+ui7ZKOVqSNncu8GUPjzHyhDmyOb22oX
         lB1NU1GjGc6rvCFgH4bzIHNmsxXUY7yhgp4zl29mBkTysg1+hHSRi3kvp4pjw0agzl1A
         XRD6A6lT8v9c042gWsRLLLRE1RnauIZcwERO1qhz8XQNq0R3tqS6xSdSkN6D/dUR5AzF
         YfsY+A7gIB7EWLmQQSkdz94kF9tcMNL1ziXoyQZtoef9hsBR9vr0N+ZFbgIjKEUveBUR
         2RKJsmPkr2EyAZtOXrbTm0Nh11jBaWy9vaLQOjx0PV8FO+sO7mF87i9R7kJodsvNBAeU
         u1ng==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWQEmJQz7oqXCdBLqjKX6jN91qcuk0EN5lBjvGlfHjtQPfOs6irzqOQ88aprd3MpnvsWESDx4CWhx8U2a56Z4AVgurkHpi4Svk=
X-Gm-Message-State: AOJu0Yx/sBCL3h2rNFaG7T/rBhdQkxYbwOzf1XPIDAPGvUGVhETOV8B3
	QUz6XqffomMo1VtPivq78nd0YGybbzgQ2XFt2Cg9dQmE5Gn1Swvd
X-Google-Smtp-Source: AGHT+IHk51V6ie8cKhhXWn6Qt18czlW4sWGS7VMYq0Y+1VaPByOxmlTCjz6e2FyNmrIWmwWdw15Iig==
X-Received: by 2002:a05:6214:cc2:b0:696:f83:a88a with SMTP id 2-20020a0562140cc200b006960f83a88amr9023672qvx.28.1711351407404;
        Mon, 25 Mar 2024 00:23:27 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:2421:b0:68e:fab1:8005 with SMTP id
 gy1-20020a056214242100b0068efab18005ls3814698qvb.0.-pod-prod-05-us; Mon, 25
 Mar 2024 00:23:25 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWb1jAudMMAneWvUaYYvV8znjagWRKhratUwLwsI8mVH7R6WfDLo7Juoh0t5due9k+LzRQNKDprc53Xw2oFHlL8eWxIZcyPYAfLAvQ=
X-Received: by 2002:a05:6122:90f:b0:4d4:1f41:472d with SMTP id j15-20020a056122090f00b004d41f41472dmr3638679vka.16.1711351405681;
        Mon, 25 Mar 2024 00:23:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351405; cv=none;
        d=google.com; s=arc-20160816;
        b=Ip5LZoxbbp2+HdLualEcmQ+rdgp0lNeFhhJqfLBwUg0p/EgBjASedfo2VMjpDSic6P
         aafQz4rbraB2lXw36QWdTO2zOYESMwE9bvR3LM00rmNKC07JimvJbv35PEB9KNGrdCuo
         9UDHd3v9dZVAxGyuwgwKD+pXCizSN0fsKynBUn+foMou1h10q6HqVRj+uCdWfF9uhgY9
         eaeZT6Pub40/SsEeU1ZgNHoPU2UtvXoLOUoIfzobz3qLCkdVKqWpFT9RExOlEeT6yfIR
         jcWe+/IsDbNTZ/YDF5oCM6OeVvtnYHAl4s9376XI2vcomhmqvWqfzBkSwCcFJ6WN7Xm2
         Vvww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=swf0HYUjit7t7Oy6/Im3Hdxis7CJmVTv03SkCOUhLN4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=vYDo7p+HpKIJKp6si2vL2P0nBZVHpTBqADe1NRsHP0VvJ/1G2yCImMi8AJiEZR6N6g
         Ufs0rYviT8CqzcmGNL8Mz1m/48l1HL4doNVr0o2X+bvKq736f3xq+ihFj/tC5fk+QRnf
         RyVVLEdbRvMKfkKjZNzAt6Fd06VLn6N0ABHm3oQ2m8AstGwkSR7L7khbJFh+gJ2BivzH
         6lNoFgHuKln4MTOxi4H+TLDaS0S/apV6oB+G59zA4f2Rg1uUqCyzwa+9yJ+BGk+dOaTn
         7oBg5A5Ovk+3s6ecCgkZ21PNYLlxg6lLftFvZG0vPcbZoJzU3OYN0oginXVTrCNgqZvI
         jGQw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cQqk9TXB;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id o65-20020a1f7344000000b004d32e96f356si521656vkc.4.2024.03.25.00.23.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:23:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CB84ECE106A;
	Mon, 25 Mar 2024 07:23:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F153EC433F1;
	Mon, 25 Mar 2024 07:23:15 +0000 (UTC)
Message-ID: <08451976-7e39-4c7f-8bf5-5eeda4316c4b@kernel.org>
Date: Mon, 25 Mar 2024 16:23:14 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/23] scsi_transport_fc: add a max_bsg_segments field to
 struct fc_function_template
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
 <20240324235448.2039074-6-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-6-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cQqk9TXB;       spf=pass
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
> ibmvfc only supports a single segment for BSG FC passthrough.  Instead of
> having it set a queue limits after creating the BSD queues, add a field so
> that the FC transport can set it before allocating the queue.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/08451976-7e39-4c7f-8bf5-5eeda4316c4b%40kernel.org.
