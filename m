Return-Path: <open-iscsi+bncBDJNPU5KREFBB3GJQSYAMGQEE3JKS4Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id A986A8892F5
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 08:17:03 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id e9e14a558f8ab-36848678a9fsf42240015ab.0
        for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:17:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711351022; cv=pass;
        d=google.com; s=arc-20160816;
        b=vfaC1+crvwq+V0Xc9BxiUCxmaALJUJ/Vag5Jpojwu7zUfDB5THjZb5e5XnQCtNbuTW
         ilsrNDCtnC1upjSvYqjTRdyEqs0G1QYCGHNlppS4+7TXeffn10gW4e4hq9F2JPpQhMEd
         3lxf4TIwHn0z/wEcQjtpdQ5T9BbmKRmreMPVBUcOl+B0CYKEw6/2fzhMXbXQXQo36+VF
         NjUFHmZSlwkMIIAmkIC3MKQiueOeVou3Grz9TwF6Q7PyynpEPlZKDLwsEaAkrw9v4IZ6
         xAvjGQJ7rBp7ykv79F6MG+8TLcXe9GBfcykbWbJ1grB59ih13/SCNLtSun0czR528KOz
         t+1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:organization:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=iRy7UbIv7+3D8sYDcEMVCeiRMH50am755U+WJfbYuac=;
        fh=vaq/rRZIPFa4nSry4NJ1tV2fhnJtgTIC4Qd2guaEfeM=;
        b=GoK3XeDmRczTMyCqgJG8q5PZWkbCIbcljB/rt8VW5aFP9R0qtZ1QeFw7x/S3h+0P51
         SC8jtx7oWV1/fyIbFdJgu9EpgBNiGijN3qU4KN+XWVlkwYvkkNXTrUPJTjMi6nQYj1v1
         7KSiu8asoZCu+VZDecfQ0uJeXw+ZiSyqR3FXftxP4bo1WBc8c4RAJdOMgUUuxSYUSA3E
         pgUrEXC9W54t77ExKDaXzpwqZ5K0OKq4nnLcKFltPy+Ohq2X6V16Z5cddC/RXUIZ08gn
         uVBTIyzsha6ZmlvCvoDKpO+V7a0p0XjZxUpFMpSQNZswbrgv6iFeDrVYAZBm2B4833BH
         p10g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iSghu8mR;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711351022; x=1711955822; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:organization:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=iRy7UbIv7+3D8sYDcEMVCeiRMH50am755U+WJfbYuac=;
        b=S63aIK1cm6UulGrL+jtagwHegYknKKYaMOmqcNQpCMNAtpTANtXKoXEXbKM2f+TQLs
         9FH9qhwws+aHH9Vo2nETuc/waO9IoW60hTFE9kBEeDt8ARKuhsZcGZ3/DPLfos2v+fX0
         EuY6lljyO0rGA8Z52jfALhJEGIWatuDQJPMawKKF/v+l6tm4hSNa4px/l6BSX/OBHCOS
         NP+LsJ3lLfdwxkQZ0P2XbKL9Lkh5LYZ71jtxWun5UnOrw1n0BlmSAWiUmjmaJMz41F3a
         JlOazpsa/ofTJpgOEE0Jbxwpxrru5ezgR8kJoYrd8wvzCTek3/EMEkxehzn5aNnpZpJf
         5y8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711351022; x=1711955822;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iRy7UbIv7+3D8sYDcEMVCeiRMH50am755U+WJfbYuac=;
        b=iIRYr6iTQVARNL9rSr83roBvO+8kGIajmiEOadXXq5Sia9/b6yswu13aH+4f7XleH6
         HS0nQRUaYDo9AxXZHnCiwf7KJR5IiiGS4dhUDIdCas0OToS6kiBQyt2E0aY717PTrl4t
         Q7YwhX2xq06HfX37DXL796ifT63wIEICOsCJ4Ows1Ur+jOiE61TxdcFAfbehl+rxLQHC
         LAkD3tQ8RKL8cc9EShvcOxb019a3rFzmpA3u4s3gOGP2T/FWE7Jlsot/J08H7AEQ6m1G
         f9RMc3lwQY9cnRDQWfrnEwbhHmJE4RHo1CsYXMyb6Ppi3Wh00iz2+y4eM9nIkTlOxPuV
         vTXw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWX9NzhCGh+9bM3zWNBKenVCxO+lmt+QT448Y0437cMen8nKCe10/3gGVxD7aaJtKIKFyRcx73iTJmqp77O66xDRjyY/cT3zoo=
X-Gm-Message-State: AOJu0YyEuGyIEWkeeREcG70D6QmemCByGMVpCpozEo1fPC6f3KE9p0Zb
	TC0eV5fH8GiAAENBXMFSrZkEcOORKIV9oOq4jgjGKzj871OLCJcL
X-Google-Smtp-Source: AGHT+IHyamZNGJ+HS8GCMiJEIx/kUAp7jWyGVDY6rYNQy+2eTL7GT5RecjDAn3aXNruBoh7sjFW8iA==
X-Received: by 2002:a92:ce8a:0:b0:366:bcd1:f650 with SMTP id r10-20020a92ce8a000000b00366bcd1f650mr6195643ilo.5.1711351022253;
        Mon, 25 Mar 2024 00:17:02 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:1d15:b0:368:75b2:7d79 with SMTP id
 i21-20020a056e021d1500b0036875b27d79ls1434198ila.1.-pod-prod-06-us; Mon, 25
 Mar 2024 00:16:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWLu8bcwCoX6jUQKiKEA1YihwPgFwP8bOW/wQCIW7QQ47yVbO8tUIIUejKkLYqJonEyZjjldGU3OnEPy8Gqo2U5wFuYbUn96h9QTWw=
X-Received: by 2002:a05:6e02:ec2:b0:368:96f0:6f0f with SMTP id i2-20020a056e020ec200b0036896f06f0fmr398322ilk.27.1711351019630;
        Mon, 25 Mar 2024 00:16:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711351019; cv=none;
        d=google.com; s=arc-20160816;
        b=TD0RFR3IkllM8uf09HoaET6mFs5km3WZzRAE1IuK784pvirK0rOQX4CVJqc40zm/GQ
         bIM4XPiWiIGNBZREJ/7KCdNa3TjkznxwKsopFjWUB1oHiYOtojloip8X+6PqDoO4sCK/
         vVF1zHhca1Rp2RulWLNdNFnUti4SwMlqt0Q2TcJxrD9BGuQE5C/ekF90k/0BE1yctGJP
         YCen0hvAWlKQzuQhnx3du+mgQbsPrk5Zq8rin0LNCaut+ph9zgj/U1saVwPsBotw5NA0
         HexJyaAiiM7xz4UxHsdb8K9cMdy2R3LkpVBUJnfgpi30fHFAlfMZQ1fDm12pkeyPW10x
         P2Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=Y0tRwSrRmR99zfd8MNpAiHASOpFFxXjaHT6Qdiy8l/4=;
        fh=42thyqLuX+U3R/biblipVYna9LUz9grvZASiaIDfzRc=;
        b=bdvSCJwfh97pyG6j0cEvV6eqCF/Kie9gOix7SV3DQ2rUWvsjJyEDYLl+2l+15w5ogT
         zYOy1gw5Io4PltsUSwci4aMCjVQ4U/3FuvwpZ4fendm2o9WGa3ubfxFy9ApzKWLLw4nB
         FgmFeaAy1yghIymLz9lSdz+dqQS4slE6y6TOnwCmWngrE0GwlwWtkIupcU0mqx6yxz7S
         I45xG00h9h2nR2ISYbjUq7Uj5sPaQd+lc6dhRzdwJDBrrxQPCKRV86QArlgOPeDgEU6n
         NMIyrVyMiZuDyiM5U//nmqzCiphxyepyWrIONaTvs7vi7qNkcAMn7Inp3nOc3l862eU0
         bnFg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iSghu8mR;
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id x6-20020a056e020f0600b00365e9e3139fsi497414ilj.2.2024.03.25.00.16.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:16:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3550060DEA;
	Mon, 25 Mar 2024 07:16:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 153FEC43390;
	Mon, 25 Mar 2024 07:16:51 +0000 (UTC)
Message-ID: <c9070d06-3095-4bc9-8b9e-ce292404362c@kernel.org>
Date: Mon, 25 Mar 2024 16:16:50 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/23] bsg: pass queue_limits to bsg_setup_queue
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
 <20240324235448.2039074-3-hch@lst.de>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240324235448.2039074-3-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iSghu8mR;       spf=pass
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
> This allows bsg_setup_queue to pass them to blk_mq_alloc_queue and thus
> set up the limits at queue allocation time.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/c9070d06-3095-4bc9-8b9e-ce292404362c%40kernel.org.
