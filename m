Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBDXYQWIQMGQEK6S62XQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C4F4CCBCC
	for <lists+open-iscsi@lfdr.de>; Fri,  4 Mar 2022 03:40:17 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id 145-20020a630397000000b00373b72d65f5sf3708439pgd.12
        for <lists+open-iscsi@lfdr.de>; Thu, 03 Mar 2022 18:40:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646361616; cv=pass;
        d=google.com; s=arc-20160816;
        b=nbMVe7B2or/Gq/G/FjocOb18UMrncPlo6j6x672VV5GeOc92rK1YLdYayYopI4V9zN
         fS3TYkqWFv8Ias2DANu++g/uIhaMHoB+Fl6E75Sv62HAexda9oNUk5s8oNEILUMzNkZ2
         ndyrQGf5WwAgMo1yGJMzpzbhvZ2p438kDf+HoiqloawvglDJ7ds5sEGPMDCeHO0XW9L0
         3WDG76+0I7EXBtcGxMQokd473hdjQnfFLUdxUg0K+k7H9eAV/eWm9tL7zwcFHRTj6bhM
         906p0+CZhsvdEXxoRE1kY67Jf36gVVFkM75miu03c2Ytk5EGKRc4mmceD6wiAzFLR346
         vlsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=nmSemvb8rQ6rpuprLrqWDlZSQcQLoY/dpl4gkWG+Vz0=;
        b=XJHGcpKUsrekc4GBkcvSLCBfTedSH8q4VXwFAdVDNKcLK0TCFxEYVm0pnj54VZHkpp
         E++lwTkReqjW0p7QLX9clDGusyhf6YZhhBPYFM2rtUSql50/VaxIydbf2c/Jh5qzorK7
         uG/I8UyeozQkEwRwFFey9Q+tYJb3uStv7pZFRHiFe94xxsC9d1Q9WbO6Ss60KKUSmiGX
         pXMLjgVB64f/0+KKfv2t7noLB7Z7Nh0sh8dUxqQ/l8M0k6blLlZOuehE+a9drxHIzI/N
         4TWrQC64BKU+1qL6EEyZm5WXxwM5fd2wQXnNm/b+K1rAJRZFtc4Saj4eu/lBejfwT9Wv
         SIQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=nmSemvb8rQ6rpuprLrqWDlZSQcQLoY/dpl4gkWG+Vz0=;
        b=IeydQjOYLV9ucepeNyosul3ZSo1Opeq7pyFPI33wdCB6m8T1ZBQaGgNtbcjWLQCaUa
         OPTtwsnEufPUewo3QdiTduYHUmUnn+krBveh1DCQSAP0gyjqPoI9HjUoJYOBbgNhZv9t
         emrlC0gyrHZ72jJ1TwHbIXJ0jGNG7JfR22lngckUPguGH1pywO8wCCV/77Lg8759tNFZ
         isROtGRHL0t6nf6DkFAWtai3kMriGjirqyuLn2prJftvld8PBEg9BfR5iMQ8XjHNsjuv
         p2TrXszgLYohAlmKjw8WeBnB7F3PZmTV7Jgo8jSde/XlXRI54Z/naTVR86qo30jlwp1l
         pKJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nmSemvb8rQ6rpuprLrqWDlZSQcQLoY/dpl4gkWG+Vz0=;
        b=wCojd9GS0B+hqgMq1MUQ44tv3ma6wv5M+otX5L5WZ9RZSBqlRW6ha349tiaIgERtPB
         HZDVHe4ZiMzbmpOCycg5wl1MxeJ6gQ7at1gJjDzvW805SScmQYGURx0Zg5MIPsxd01Jm
         W8Tn+IBB1izVAMxiQ7hZmJUc39JXShbhl0MXKCCH8ntC6vARO+2XlW1oLnPXan+T6B2a
         oJjBbxj9bRy1kUyoKzvYMKb3psiu+8xII8l2LIFQ0FBh1QhKhotDKBPk5gIpuxV3I6js
         bymcEUv314NKan5LR6mN+G58+aNzBPxNv2OKVB1oCeJSTq8yrKG6GHmNFPbG/RXDFolK
         ePQw==
X-Gm-Message-State: AOAM533LoQNRs8/MzD8R6+Kz/7frbMN3+5bsl+QGtVIqxjRenS3HYHdB
	KfLgRnE1nrAFPgdmQw9z4kc=
X-Google-Smtp-Source: ABdhPJy7+fv9gbBTTeTLCBUlNWYtY590O10vsOk6cz0ueTFv4BzeemiHU6UGqfeVjw+ladiO4nbKRw==
X-Received: by 2002:a17:90a:4306:b0:1b9:80b3:7a3d with SMTP id q6-20020a17090a430600b001b980b37a3dmr8383489pjg.66.1646361615929;
        Thu, 03 Mar 2022 18:40:15 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:ecce:b0:14f:d9c5:79c0 with SMTP id
 a14-20020a170902ecce00b0014fd9c579c0ls3519230plh.5.gmail; Thu, 03 Mar 2022
 18:40:13 -0800 (PST)
X-Received: by 2002:a17:90b:38c4:b0:1bf:e9c:c485 with SMTP id nn4-20020a17090b38c400b001bf0e9cc485mr5931441pjb.228.1646361613750;
        Thu, 03 Mar 2022 18:40:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646361613; cv=none;
        d=google.com; s=arc-20160816;
        b=Y+ljMyhMhcjfUQ6P0qa/wQ1g+nN9plv4O0C0tJt0DtIBjzjbBkfb3hNUv1aQqA4dQ8
         GIsFEOkokqNU1jjNSPN6yFIRxqg8GlwhV46VK4/Vi9JtRNRwAC7jCydPoJaY+D/9HOly
         o/HbcG6QG4rcjOOFrb3BBMpBAjVk7rlH9vCES2tdl+4IBI8/u1bd43bevnlhEsS3nI/Q
         iTyeBI49+S0qnxpP+5GHtlKGMh6OqNPs/Goa+xberOGGGZlmaAlV8UcVAC4/EE4kKk08
         gg71oVP4lsn81IXuDrvC7Wgrl0DeYYb/0blBDOogo9ORzI5ZNA+iQAkxhvU3LD7QbQuL
         CA7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=oS1o2tyODZL+NfKb/OdWM1WA/R++mP0sayf0FhLX30M=;
        b=PImjGFUz4Za+d5okQtmyyOyDt2oLvAY2EOQG4jJeU2oyeP3X0+PoRHXfz9CydyJGuC
         HgtHs/cQxzpRXPLGbR557wZIZXoYGvPl3QSxVs0sMmvuxIP7k5/W7767Fq7wtjx01sqh
         uX2QJoLLWtmU3q+jVMxxCbRXrthsk6SJugLA5m4nkVkdRBbp4myxC8odbYsz00zPaPPx
         hx1wQ9i/rjKLmoNT0XgLztbvr3V/Aw5Aeactkwd96A7T3AkPaaebyTp7ucvZOLIAHyG5
         y9f438LUIUDDDdhFV3Cp4wUYOwZInzkM3Xidq/U7BdCwPG7G2g6I8bozePR084rAqXDu
         qvSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id l18-20020a62be12000000b004dfd0c1901bsi146612pff.3.2022.03.03.18.40.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2022 18:40:13 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500022.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4K8sVj3g22zdZx3;
	Fri,  4 Mar 2022 10:38:53 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500022.china.huawei.com (7.185.36.162) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 4 Mar 2022 10:40:11 +0800
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 4 Mar 2022 10:40:11 +0800
Subject: Re: [PATCH 1/2] iscsi_tcp: Fix NULL pointer dereference in
 iscsi_sw_tcp_conn_get_param()
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>
References: <20220304025608.1874516-1-haowenchao@huawei.com>
 <e2b37e24-44dc-a159-e45d-2c720fe7ffc1@oracle.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
Message-ID: <8fbcbe4d-629f-aaba-494d-1102c8150daa@huawei.com>
Date: Fri, 4 Mar 2022 10:40:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <e2b37e24-44dc-a159-e45d-2c720fe7ffc1@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as
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

On 2022/3/3 23:03, Mike Christie wrote:
> On 3/3/22 8:56 PM, Wenchao Hao wrote:
>> kernel might crash in iscsi_sw_tcp_conn_get_param() because it dereference
>> an invalid address.
>>
>> The initialization of iscsi_conn's dd_data is after device_register() of
>> struct iscsi_cls_conn, so iscsi_conn's dd_data might not initialized when
>> iscsi_sw_tcp_conn_get_param() is called.
>>
>> Following stack would be reported and kernel would panic.
>>
>> [449311.812887] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000008
>> [449311.812893] Mem abort info:
>> [449311.812895]   ESR = 0x96000004
>> [449311.812899]   Exception class = DABT (current EL), IL = 32 bits
>> [449311.812901]   SET = 0, FnV = 0
>> [449311.812903]   EA = 0, S1PTW = 0
>> [449311.812905] Data abort info:
>> [449311.812907]   ISV = 0, ISS = 0x00000004
>> [449311.812909]   CM = 0, WnR = 0
>> [449311.812915] user pgtable: 4k pages, 48-bit VAs, pgdp = 00000000e26e7ace
>> [449311.812918] [0000000000000008] pgd=0000000000000000
>> [449311.812925] Internal error: Oops: 96000004 [#1] SMP
>> [449311.814974] Process iscsiadm (pid: 8286, stack limit = 0xffff800010f78000)
>> [449311.815570] CPU: 0 PID: 8286 Comm: iscsiadm Kdump: loaded Tainted: G    B   W         4.19.90-vhulk2201.1.0.h1021.kasan.eulerosv2r10.aarch64 #1
>> [449311.816584] sd 1:0:0:1: [sdg] Attached SCSI disk
>> [449311.816695] Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
>> [449311.817677] pstate: 40400005 (nZcv daif +PAN -UAO)
>> [449311.818121] pc : iscsi_sw_tcp_conn_get_param+0xec/0x300 [iscsi_tcp]
>> [449311.818688] lr : iscsi_sw_tcp_conn_get_param+0xe8/0x300 [iscsi_tcp]
>> [449311.819244] sp : ffff800010f7f890
>> [449311.819542] x29: ffff800010f7f890 x28: ffff8000cb1bea38
>> [449311.820025] x27: ffff800010911010 x26: ffff2000028887a4
>> [449311.820500] x25: ffff800009200d98 x24: ffff800010911000
>> [449311.820973] x23: 0000000000000000 x22: ffff8000cb1bea28
>> [449311.821458] x21: 0000000000000015 x20: ffff200081afa000
>> [449311.821934] x19: 1ffff000021eff20 x18: 0000000000000000
>> [449311.822414] x17: 0000000000000000 x16: ffff200080618220
>> [449311.822891] x15: 0000000000000000 x14: 0000000000000000
>> [449311.823413] x13: 0000000000000000 x12: 0000000000000000
>> [449311.823897] x11: 1ffff0001ab4f41f x10: ffff10001ab4f41f
>> [449311.824373] x9 : 0000000000000000 x8 : ffff8000d5a7a100
>> [449311.824847] x7 : 0000000000000000 x6 : dfff200000000000
>> [449311.825329] x5 : ffff1000021eff20 x4 : ffff8000cb1bea30
>> [449311.825806] x3 : ffff200002911178 x2 : ffff2000841ff000
>> [449311.826281] x1 : e0c234eab8420c00 x0 : ffff8000cb1bea38
>> [449311.826756] Call trace:
>> [449311.826987]  iscsi_sw_tcp_conn_get_param+0xec/0x300 [iscsi_tcp]
>> [449311.827550]  show_conn_ep_param_ISCSI_PARAM_CONN_ADDRESS+0xe4/0x100 [scsi_transport_iscsi]
>> [449311.828304]  dev_attr_show+0x58/0xb0
>> [449311.828639]  sysfs_kf_seq_show+0x124/0x210
>> [449311.829014]  kernfs_seq_show+0x8c/0xa0
>> [449311.829362]  seq_read+0x188/0x8a0
>> [449311.829667]  kernfs_fop_read+0x250/0x398
>> [449311.830024]  __vfs_read+0xe0/0x350
>> [449311.830339]  vfs_read+0xbc/0x1c0
>> [449311.830635]  ksys_read+0xdc/0x1b8
>> [449311.830941]  __arm64_sys_read+0x50/0x60
>> [449311.831295]  el0_svc_common+0xc8/0x320
>> [449311.831642]  el0_svc_handler+0xf8/0x160
>> [449311.831998]  el0_svc+0x10/0x218
>> [449311.832292] Code: f94006d7 910022e0 940007bb aa1c03e0 (f94006f9)
>>
>> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
>> Signed-off-by: Wu Bo <wubo40@huawei.com>
>> ---
>>   drivers/scsi/iscsi_tcp.c | 7 ++++++-
>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
>> index 1bc37593c88f..14db224486be 100644
>> --- a/drivers/scsi/iscsi_tcp.c
>> +++ b/drivers/scsi/iscsi_tcp.c
>> @@ -741,11 +741,16 @@ static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
>>   {
>>   	struct iscsi_conn *conn = cls_conn->dd_data;
>>   	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
>> -	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
>> +	struct iscsi_sw_tcp_conn *tcp_sw_conn;
>>   	struct sockaddr_in6 addr;
>>   	struct socket *sock;
>>   	int rc;
>>   
>> +	if (!tcp_conn)
>> +		return -ENOTCONN;
>> +
>> +	tcp_sw_conn = tcp_conn->dd_data;
>> +
>>   	switch(param) {
>>   	case ISCSI_PARAM_CONN_PORT:
>>   	case ISCSI_PARAM_CONN_ADDRESS:
> 
> We are actually doing sysfs/device addition wrong.
> 
> We should be doing the 2 step setup where in step 1 we alloc/init.
> When everything is allocated and initialized, then we should do
> device_add which exposes us to sysfs. On the teardown side, we are
> then supposed to do 2 steps where the remove function does device_del
> which waits until sysfs accesses are completed. We can then tear
> the structs down and free them and call device_put.
> 

I agree with this, and I would try to split device_add() from 
iscsi_create_conn().

What's more I would do some check between sysfs files add/remove and 
kernel object initialize/release to make a micro-refactoring

> The exposure to NL would be similar where it goes into the wrapper
> around device_add. However, see my comments on the other patch where
> I don't think we can hit the bug you mention because every nl cmd
> that calls into the drivers is done under the rx_queue_mutex.
> 
> I think we should separate the iscsi_create_conn function like we
> do for sessions. This is going to be a little more involved because
> you need to also convert iscsi_tcp_conn_setup and the drivers since
> we can call into the drivers for the get_conn_param callout.
> .
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8fbcbe4d-629f-aaba-494d-1102c8150daa%40huawei.com.
