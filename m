Return-Path: <open-iscsi+bncBAABB5MSWCLQMGQECEFQSRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE1758A01E
	for <lists+open-iscsi@lfdr.de>; Thu,  4 Aug 2022 20:01:28 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id bl15-20020a05622a244f00b0034218498b06sf302751qtb.14
        for <lists+open-iscsi@lfdr.de>; Thu, 04 Aug 2022 11:01:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1659636087; cv=pass;
        d=google.com; s=arc-20160816;
        b=C/nASSj0CO/tc+6mf/uRVAjulyBt+cFxVNFPmAJceLKsON5px7ndPyCT+8Zkmg9zTJ
         bpth6n+HB2UUYGSF+5GFormkgi9Mfh5lmCERiKijg7pBieCeHlddZjXf3fERg6C/CfZ1
         qNMOUqmJFPEinFKZu2zWH75INaDBqUptrI0iGh9EBpMyu0Bu0W4Vj9vfNdxnC7UzrccK
         hsnZrl5xL6B40r7YwX9UbBNvuwPk+9qqhvIPLtjarnmR1FrFNOFxnDQLYEHcw4CqOwBb
         IIBLS3YcxNZ33Wdj2RAiyL7hgHR3a7qEb7BMiCJO5QtJF8LypmYpF6SbZdaqssqT2cZY
         /x6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=1SPbN8oqXCmaHg35ylaNvoE7KaGkN5BwtrC9QTTk/Bo=;
        b=09ggsvXlAbj+xE8yZ0S+QVwgpVVckDiCVrwQBIqctwynqzBxdvVUIoyTfD+kvOT6jC
         DTjIzZEXprjuAx/Ooo3smMW6LL6CTzlnYGT6Lea8SLKKoqXMzQCAOaii3xnSAuqDrHZY
         L2pCN9VinHRufOmAx21pEqCRApu3GCtUIQR280+S0olvM/yj8oBHY60rVNfsbX09WrlF
         kIRX0huj3y0LtXo3ZBNIhxViDwqCWRCHcrZDvUS68QA0CbN8d28QAv6T9RUhaTo25Q7L
         O6O93oCqBSrQeTyAs3JQcd9lk0LJklaKYNsiQWKK96t7ngFdSP2g1JvYgdJZan1czXr5
         9k5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lijinlin3@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=lijinlin3@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:from:to:cc;
        bh=1SPbN8oqXCmaHg35ylaNvoE7KaGkN5BwtrC9QTTk/Bo=;
        b=iHfbvPiPWi3CMO/4b0lXPeX3+k5uxjJC/WEjw8tgne/4pPVwTJD3+ieA5G6ef2DWsw
         mB3w7/9bU2w6drE6bY5lYCICCED7gNcLKQPuMzbL1kteOMRFl2oRsbxBzLhScg5m4CGZ
         Uh2fCQemY6ZMGrfsW+ayw8fkTB3toMJdX3IvrVcs0v7QXJpkWEmvV8EH+S8IE2nZugup
         EFTSWwXqtzX5a2o3T1owwFTfIm7nUr16PeIvhUzQ11ZtrBEEbYKbsTXXYyzmz4hM0WRL
         9FYwrdJsBa/DIA+T0afj9zFarKiojLcwWAk6Gq44x+mL8anSr9DQIeiq0SL+cJkiVKMY
         r/pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:x-gm-message-state:from:to
         :cc;
        bh=1SPbN8oqXCmaHg35ylaNvoE7KaGkN5BwtrC9QTTk/Bo=;
        b=H36zqFkBAQT376D1WIkSjFFE6ZDLAJaRS/7aRKGto0gU8k3JTZI5cLcDAyg9nh7t32
         jgRO4SmletdF1GhSp3ImQGv8Tpcf7d0RLa4EdFIi9uvfCNOsPfXI03g7LOnqCBwAIECl
         hCoHdpas26sYayn9llzOb/PkxgUmaI/aasJ6Hi91j9cHH5+2NaBUmVgWuTvyhOuykFCQ
         gufVNx5d2DDIibHuJg2CjJ5kmlrTCCbfiZRTm+mCPoCnNEHgAuk+WOVzNvgrRW8NvhbQ
         Y3bfSkMGoGq+4bONlV39CeNGxEeVtZW2BfMmkrreE8Ordxdcjt+8mQ3YKDJwURX36eGu
         we/Q==
X-Gm-Message-State: ACgBeo1UMV9fSStQIFMGvsK3lG8d6OZOZ6EpfMiDcqJaYBo7yvSgAQh+
	x6Ev6PbcvxF5UzpTVbFv13w=
X-Google-Smtp-Source: AA6agR6pb4h30EZ+Uk/8dBcKzwrrjShEAzzGzz49bx7p2BuYg2wWmA+qm/1PXCuAH5IAxeo/fmBmVw==
X-Received: by 2002:a05:622a:1a0b:b0:33e:d364:13d8 with SMTP id f11-20020a05622a1a0b00b0033ed36413d8mr2629574qtb.341.1659636086904;
        Thu, 04 Aug 2022 11:01:26 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:ca05:0:b0:474:9b45:9854 with SMTP id c5-20020a0cca05000000b004749b459854ls1329643qvk.4.-pod-prod-gmail;
 Thu, 04 Aug 2022 11:01:25 -0700 (PDT)
X-Received: by 2002:a05:6214:1c87:b0:46b:c547:543d with SMTP id ib7-20020a0562141c8700b0046bc547543dmr2600108qvb.52.1659636085710;
        Thu, 04 Aug 2022 11:01:25 -0700 (PDT)
Received: by 2002:a05:620a:2888:b0:6af:d66d:fc6a with SMTP id af79cd13be357-6b8cf7927cfms85a;
        Wed, 3 Aug 2022 01:57:05 -0700 (PDT)
X-Received: by 2002:a05:622a:148c:b0:31e:e643:953f with SMTP id t12-20020a05622a148c00b0031ee643953fmr21822670qtx.678.1659517025187;
        Wed, 03 Aug 2022 01:57:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1659517025; cv=none;
        d=google.com; s=arc-20160816;
        b=vjfm6Z5jrII3ZgnjN+zuU8NIBYfYgX8PJtheHAyCii/ig8h59dZuXRJxfh8XXb0+yX
         lNQnEb6mQbh8mBnfyiU4NzYLITG/hoYiILnLJvj5p3eOuA+ubXs56qGTzXUvWvAZNxgH
         MHtsVHChvknflxEWy6YYImyHbxFJIH9PjrQwbAQfuedSTmRN2JXBN6PG+d5nwhu5Oji0
         f5VuUggz8jJ32BnPJBdn1uBwp65QB1+R7C7l7W+FtSUOfSFw57enEk5CxgMv7q1scT7K
         q4edewnPSDDSatYNh1522BXfaJXw5r8mvwNX6SagjwhMgHngCJotNSudkx83cIspkBoF
         W7Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=fzfDGi0Aw0uDOtd37t/67/NYsqTkrW088eUTUHSTazo=;
        b=gZCtlI5Bd+I9XF5nR3+ZtFsuVzS9GpOLgLMjW0Jb+wyr1xyTYbVkUU1NoUf0JZ0Vqc
         Sq5g0dq87JLOjjxR6i0l8P2VvX6Jr5BNzbGfO1YwxKxFgxRU6xd30uT/15KCUJ+/cAhs
         /OYgrtW3LEcuXWmTwG8YvaRu10Kzmyj/BqLQxcT72RNdFDvSm21nGVk9fivrTXZe26x0
         xTxXuXrZhyYSAD4LRl+6/Cg2M505yhiNip9LiDBFoGRVMxA/7LY+Upyy+lW+r4MUuwpf
         7xcTTzBt/bEmdO//l3nNbhPtXSKLPFAT3XSGnFXc30jd3HH4QG95gCmwTr2hpGmMW2iz
         J1sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lijinlin3@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=lijinlin3@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id m8-20020a05620a13a800b006b5fa3b62dbsi408133qki.6.2022.08.03.01.57.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Aug 2022 01:57:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lijinlin3@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from canpemm500008.china.huawei.com (unknown [172.30.72.53])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4LyQgN3vr8zTgTg;
	Wed,  3 Aug 2022 16:55:44 +0800 (CST)
Received: from [10.174.179.2] (10.174.179.2) by canpemm500008.china.huawei.com
 (7.192.105.151) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Wed, 3 Aug
 2022 16:57:01 +0800
Subject: Re: [PATCH] scsi: iscsi: iscsi_tcp: Fix null-ptr-deref while calling
 getpeername()
To: Mike Christie <michael.christie@oracle.com>, "lduncan@suse.com"
	<lduncan@suse.com>, "cleech@redhat.com" <cleech@redhat.com>,
	"jejb@linux.ibm.com" <jejb@linux.ibm.com>, "martin.petersen@oracle.com"
	<martin.petersen@oracle.com>, "mark.mielke@gmail.com" <mark.mielke@gmail.com>
CC: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linfeilong
	<linfeilong@huawei.com>, "liuzhiqiang (I)" <liuzhiqiang26@huawei.com>
References: <20220802101939.3972556-1-lijinlin3@huawei.com>
 <d8afc88468ab481eb325e842ad384e0e@huawei.com>
 <f52cc786-be48-d670-6212-5ae6117d314d@oracle.com>
From: "'Li Jinlin' via open-iscsi" <open-iscsi@googlegroups.com>
Message-ID: <edd3f6af-98eb-2f17-2144-99daf6455be8@huawei.com>
Date: Wed, 3 Aug 2022 16:56:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <f52cc786-be48-d670-6212-5ae6117d314d@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.174.179.2]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 canpemm500008.china.huawei.com (7.192.105.151)
X-CFilter-Loop: Reflected
X-Original-Sender: lijinlin3@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lijinlin3@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=lijinlin3@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Li Jinlin <lijinlin3@huawei.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>



On 8/3/2022 12:25 AM, Mike Christie wrote:
> On 8/2/22 6:23 AM, lijinlin (A) wrote:
>> So sorry, this patch has problem, please ignore.
>>
> 
> Was the issue the fget use?
>> I know I gave the suggestion to do the get, but seeing it now makes
> me think I was wrong and it's getting too messy.
> 
I use get_file() in local, and test the patch can fix this null-ptr-deref.
But I got an INFO report as below, it only appears once in multiple
tests. I'm not sure if this info report represents a possible problem
with the patch. So I ask for ignore it.

    INFO: trying to register non-static key.
    The code is fine but needs lockdep annotation, or maybe
    you didn't initialize this object before use?
    turning off the locking correctness validator.
    CPU: 21 PID: 1074 Comm: cat Not tainted 5.19.0 #44
    Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.15.0-0-g2dd4b9b3f840-prebuilt.qemu.org 04/01/2014
    Call Trace:
    <TASK>
    dump_stack_lvl+0x49/0x63
    dump_stack+0x10/0x16
    register_lock_class+0x483/0x490
    ? reacquire_held_locks+0xcb/0x1e0
    ? release_sock+0x1e/0xb0
    __lock_acquire.constprop.0+0x4e/0x530
    ? lock_release+0x142/0x2d0
    lock_acquire+0xc3/0x1b0
    ? iscsi_sw_tcp_host_get_param+0xa4/0x120
    _raw_spin_lock_bh+0x34/0x50
    ? iscsi_sw_tcp_host_get_param+0xa4/0x120
    iscsi_sw_tcp_host_get_param+0xa4/0x120
    show_host_param_ISCSI_HOST_PARAM_IPADDRESS+0x56/0x70
    dev_attr_show+0x1d/0x50
    sysfs_kf_seq_show+0xad/0x120
    kernfs_seq_show+0x2c/0x40
    seq_read_iter+0x12e/0x4d0
    ? aa_file_perm+0x177/0x5a0
    kernfs_fop_read_iter+0x183/0x210
    new_sync_read+0xfe/0x180
    ? 0xffffffff81000000
    vfs_read+0x14d/0x1a0
    ksys_read+0x6d/0xf0
    __x64_sys_read+0x1a/0x20
    do_syscall_64+0x3b/0x90
    entry_SYSCALL_64_after_hwframe+0x63/0xcd


> Let's just add a mutex for getting/setting the tcp_sw_conn->sock in
> the non-io paths (io paths are flushed/locked already). Something like
> this (patch is only compile tested):
> 

This patch is clean, I have tested it and it is effective.
Please push this patch to the mainline, Thanks.

Jinlin

> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index 9fee70d6434a..c1696472965e 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/edd3f6af-98eb-2f17-2144-99daf6455be8%40huawei.com.
