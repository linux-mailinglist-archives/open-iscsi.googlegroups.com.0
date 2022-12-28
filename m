Return-Path: <open-iscsi+bncBDRZ7N5GYAFBB6U3WCOQMGQETXZF5JA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3d.google.com (mail-oa1-x3d.google.com [IPv6:2001:4860:4864:20::3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5F86574B3
	for <lists+open-iscsi@lfdr.de>; Wed, 28 Dec 2022 10:35:57 +0100 (CET)
Received: by mail-oa1-x3d.google.com with SMTP id 586e51a60fabf-14c90f25682sf7390878fac.10
        for <lists+open-iscsi@lfdr.de>; Wed, 28 Dec 2022 01:35:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672220156; cv=pass;
        d=google.com; s=arc-20160816;
        b=lvfo9gGNMoYZDdho6K+ASU1lsQYSH4gGQvekhk/Mhf0E51MAOvwSTaAYWfH4aTO6v+
         1sSiN3nQ70QUPQc95V86MG1iQBz+4oIJsjIZok9CqPe3ENIIbNWiiERRhrGfNf3fPMap
         My2BWnST2wfCPUG8h2rqXIe/ptIb/xvNiVAVGhRTzE7p8qTYgvHJvZJC5DoLBlah6IeX
         OkxKgBP0/o9XRP/wf2/92vLK6mif2h7BDbVvFCrbTxgJyzCEf5ILSNINiehNTqSbLx9B
         NGUw5e7WmU0thUHAe5PAxqV1V0Yzqcy3x8hmP9QfXs45/o57HLfDGZtJS+x+xQIyP3K5
         Rn8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=2OVv29n0SvVvKMQUQfmwdX3M8EwKukkhmqdTE3tcVbk=;
        b=z3BYxXR8BK4LhdZl/GDsoXDGIE+dDnZ7KuuXDUxkdnNg1so73O1NALb+5JeYGvemD2
         4Zu+2dNVT6U8rFhR0hRJVPu6yd7HDa6g7uKyE12EMh5i/qrdakKBFLryWGQtga9mPkaG
         EvguI7wJATY8ni0KUPJTf0Ndn6qSVbVWs6pwtjNShFA1TP5JyvMb5a0qjfYsfJcjbEAg
         SqhuLPUQCz08AbcI5MiEVkO2dk8JHRgH1jzFgjvuOXfSYuw9ABFQlO40LeFeEtqBmLJU
         d8D6KYy0NVXf/SahV43EvQT8O+gYLdjX4XYAe6Wg/L/5hTnxeAhhYNm77+cm2pZ9+EnP
         u0Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2OVv29n0SvVvKMQUQfmwdX3M8EwKukkhmqdTE3tcVbk=;
        b=NXRthfNnf5NLcFmDcVJR//aHZYSFphHKNiUA/4KpkUlR5OcPZ+XJzrTvVk6J4bFZ2N
         Vn2ZDh5uJa0Xhv077eDNzY18MjHZsXLzrJriAFA/w37NSNb/VAskhe53/F7BynKHH2lo
         E5LItrU44cKbl3AocrLDpRXm8fX4WesepdGvQyyVIP8IQrGs0UdOoP3xnpx2eubUc+4R
         waxTWdLCZKQP3uV5MNoh2LSnkdBOVGWDVv2Raw6U+XOBTr/02V/x0hDLlqnVeq4kewi1
         cRamZTBlA+hzz09Lvx7hp8B9PiwwuTDRWPk0gKrR0J86eIqXypF5x950OePnQnZBYxwb
         YHWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2OVv29n0SvVvKMQUQfmwdX3M8EwKukkhmqdTE3tcVbk=;
        b=Snq9f1SvNZFnlBTXynNx2M08QIpiwyPQ/IN5LKxiMUTGNz+vF1Ejm8SKbPdEiXGvGJ
         pNhOFgf9+/qWz4RNNQJvxJOSY0tX3qpfpiKc/ydqXbCks7f+xegNn/+lqKb9jgxsvWat
         a7eGK6mILM2N9H6R7UDCeRXYm67c9FE2Cjxy43+p2ajUbKD6s9lSnD9zVBkbP7meh3Mx
         nMhbNTQzr5JG/CEVdjoqfZRcUA2RG35vjvLKJ9sCZNQ5iuOXvy1QJNA8l8r0GStIR4ms
         Ldn/J3u3S8e689P7jpvNIGwUfEw0bzD3rk/wP8df15UE2AlDfeXaDxSOHbpFppEIkvyV
         8LPA==
X-Gm-Message-State: AFqh2kpT2a++Coab+qkfOdk1z/NhtAhzVdMWEYeEIipGJgxX+D+VYcNa
	uL85ASSr9aRkOCdc+dH1NHY=
X-Google-Smtp-Source: AMrXdXtXIzYQ3JCturw1ruOz+nZXZrKM0NkNUzjMIEZG3+z0zm73t/GL8DJJVoLdp27D1JEu/TjTqA==
X-Received: by 2002:a05:6870:1b87:b0:13b:9a14:8f1d with SMTP id hm7-20020a0568701b8700b0013b9a148f1dmr1309957oab.248.1672220156076;
        Wed, 28 Dec 2022 01:35:56 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:2a8d:b0:66d:a9f3:4e75 with SMTP id
 s13-20020a0568302a8d00b0066da9f34e75ls2522458otu.9.-pod-prod-gmail; Wed, 28
 Dec 2022 01:35:54 -0800 (PST)
X-Received: by 2002:a9d:17ac:0:b0:66e:a35c:c051 with SMTP id j41-20020a9d17ac000000b0066ea35cc051mr12369960otj.35.1672220154422;
        Wed, 28 Dec 2022 01:35:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672220154; cv=none;
        d=google.com; s=arc-20160816;
        b=ZbIfH8tS7jeSEmVq2YWSCKOK5Hit40c5V6NoyCCfrbistVp9zsk4T9Gi0zAP9aevUQ
         AuhcDkTk7S/D07JXBAA506/zEapgm97cy5xSZFWufaq3MR0MR+LZHHijyMEqarEMT0Ji
         mdPGAC8aHHz4aKqq/WELMvgxW7qaNBli7WFnEBvFWg+LPz3bTABJJMlaWsLdkNcTUcY5
         LZHXjhDGiRo7jjuLc/9hnenjBxnCKV79SVS3GeITJT4O/OyVDfwHYXTaCobdLxEyRQ2A
         apYZalbfmPsSZ9xNWs2pQuBYXi6qlwWx7M6zpuMkwGBglYG/sqlBfJp6hg6EIH6duQP2
         ko1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=IIlL1kc36eTo4fs2Moi1Q1HvDebaZFchLX5mHY8gJ3s=;
        b=MM4ZUjGnQ2oG2CO/81jzL+lp7RRf3ztJSa3TJ8NW3kky+vUP3L/59rLI2nJzU+/kae
         3PonIHooctTKD9JvT35UqOTnhUl1AYT/NzV8f/kBuhje2XxFBJGvIiVUpX4ayD6ADbna
         Ztj3XvGSAU/NRJQbUgkTOCE1VK731F/l7J6tHS7RtoiD9tnFm4WJ5Ero/r1UZPddmjiI
         4X2TTgkPBxozJ/PL/ISWnmcEBXL8f7unfYpoycUfUQ05aF/yzH0vyuL7tMRy90duNEc/
         jpr8+q1BxeuKeJK4zw19cDe30fSvW+6q2A2UhGhzDExxRJ6RepInIVGjhDMP+XqQKTBV
         RNew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id y83-20020aca3256000000b0035c06b99516si1630307oiy.3.2022.12.28.01.35.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Dec 2022 01:35:54 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from dggpemm500017.china.huawei.com (unknown [172.30.72.57])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4NhmWM3whyz9t29;
	Wed, 28 Dec 2022 17:31:59 +0800 (CST)
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Wed, 28 Dec 2022 17:35:51 +0800
Message-ID: <25b89f97-0cac-7611-c20f-3140565219c4@huawei.com>
Date: Wed, 28 Dec 2022 17:35:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH 0/2] scsi:donot skip lun if inquiry returns PQ=1 for all
 hosts
Content-Language: en-US
To: Christoph Hellwig <hch@infradead.org>
CC: "Martin K . Petersen" <martin.petersen@oracle.com>, Mike Christie
	<michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, Lee Duncan <lduncan@suse.com>, Chris Leech
	<cleech@redhat.com>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "liuzhiqiang (I)" <liuzhiqiang26@huawei.com>,
	linfeilong <linfeilong@huawei.com>, Andrey Melnikov <temnota.am@gmail.com>
References: <20221214070846.1808300-1-haowenchao@huawei.com>
 <Y5rHX95Vvl1aLhbp@infradead.org>
 <57c12317-c229-8cbe-b3d2-d799ea5f554c@huawei.com>
 <Y5waet8RoXKQHDR7@infradead.org>
 <5129c84b-38e5-8be4-6411-fcc003776d70@huawei.com>
 <Y6XPRfgLSUShN+mY@infradead.org>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <Y6XPRfgLSUShN+mY@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggpeml500003.china.huawei.com (7.185.36.200) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
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

On 2022/12/23 23:54, Christoph Hellwig wrote:
> On Fri, Dec 16, 2022 at 07:41:26PM +0800, Wenchao Hao wrote:
>> For nothing, I want the iscsi_tcp transport do not skip PQ=1 default
>> as what it did before commit 948e922fc4461 ("scsi: core: map PQ=1,
>> PDT=other values to SCSI_SCAN_TARGET_PRESENT").
> 
> Well, that commit was very much intentional and is now three an a half
> years old, so we've not just going to partially revert it on a
> per-transport basis when it is in no way transport related.
> 
> If you can come up with a good enough rationale we could do the
> sysfs override, but so far the reason mostly seems to be "I want"
> and not anctual explanation of why it is useful.
> .


Sorry, I did not describe in detail.

Here is the reason of my patches.

1. The SPC did not tell PQ=1 means the addressed lun is invalid explicitly.
2. scsi_bus_match() would prevent luns with PQ=1 be handled by any scsi
   drivers, so the only influence if we do not skip luns with PQ=1 is we
   would add an scsi_device and an sg device.

The reason I force a specific behavior for iSCSI:

1. This issue is occurred with iSCSI, it means there are scenarios where
   targets would return PQ=1 for an valid LUN which should not be skipped.
2. The changes for iSCSI could be tested

I did not change other transports' behavior is because I do not know if PQ=1
would be returned, and I do not have the related environment. If other
transports like adaptec raid also needs these changes, they can override
the default value by other patches.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/25b89f97-0cac-7611-c20f-3140565219c4%40huawei.com.
