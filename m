Return-Path: <open-iscsi+bncBDO7B5X3UIBBBHEE4WBAMGQEKNK465A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A943454DC
	for <lists+open-iscsi@lfdr.de>; Tue, 23 Mar 2021 02:19:26 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id z5sf535517pfz.19
        for <lists+open-iscsi@lfdr.de>; Mon, 22 Mar 2021 18:19:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616462364; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mw1zB7CiwUZ+Vv0c/AnHL+GWt0HbVnSC+4oW3gvc2zjbuN8AIAzi7rSVvR9t64Ymft
         kfWqRdbod/8gZY8Ywsc8z04ZYjsM8tWnXMvT0OWDZpU2gtCP5Pu++S9rUDg8v+9IVHga
         Znz3F3QgfiCtRKW2cZB2OZm8uiCO/JWHJqNBimzKGhY89RoGCuOF7t8VG1izcN60OFLT
         cn02rHajlVPsE14STILtOujhwML2QM46wOpQuhywGZ7Y5TPmszcmMXpPdFUDbyo8RbWc
         Z5+pg5MPsT6xGb64RofXiOa+nfmeqC2k/t0Fd59lXJ7NinTFf3buhA0xg7WIn1buaioE
         Akhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=uwGp3yYj5vIYUoRGTbxj9maW7nhgnhFeKHugjyN0q/Q=;
        b=wMrlpQFKNwuWxny9ggCDxUYhesQEHUjceMlhaCYuDwB4s+cZ6ooJCXLrsZsz7Hrrcg
         h+lw9xB4bNozNEdBaYU0LuePCAJNuRCCeBEroEPPRoEel38vg2PNxgdR1ZlMazE1DtY/
         Lbrvm/3KjW3QFVPMYajPPgBppzo4Y43fGVQtyP0xt2HidOE3PB3uaS7AuP+L2CGsZ0TC
         ebuElQvhd1rsE3fCGvpRVPly+UHuqQbZCDzWMJ9BlAmBEmZyd/z6VdoxLYNDcD++zqAN
         8vmbKBvPxJjVUPgjimR1EBSh7OQDFxUKzbC6Bt2UVkfWCqfhTliIF3e/L7vQAhxCQavr
         4upw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=wubo40@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=uwGp3yYj5vIYUoRGTbxj9maW7nhgnhFeKHugjyN0q/Q=;
        b=DmffTColLqX0MbnB8mAcnNL/+Hhz/UR5nAKpIHZZMLWk6nO4f95fI4SSEbKoo/Td79
         WB90YYXwGD53WQWK/C0DJGvtUY3xJl5o+tL/0mkOtIvGqka9Siq3H4ngxps304cjW/ti
         IlRSi/KPPipcixz57EtVwL3l0uxQy818p4ZVCwEH0L3WYGQt9+Ha9GW1bY2lv1gfOLxC
         +dlPQggvLDp2P2Xjrc4d0kjqfZNMrLchwD00ujlv86MfI+b9v5Z++X7wqB3YQz4scron
         26LNkwQAsgvqrUGgBVPckDvILrNPIf1UMA5rw7Gh6C68ljkScefrzyVjj+jP7qtT/gT4
         +hhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uwGp3yYj5vIYUoRGTbxj9maW7nhgnhFeKHugjyN0q/Q=;
        b=nvsNUJoFwK14x286Sqm+T6TGJw5tt03hUd8rQdDMTHt/P9s7Rv4mNSawEE3vKKpxdl
         FSPv2hEIF0v3vJZeMPHsv7ykbzE1kCP7Y6nErvpnh3wKAaz5XeV0SaJbylnu3mjfBEfq
         Dc2DisAZxEOk/qGWJgIAMtVMn9oLPvKZyKsMykW7A9UH/Jqc7wIqA3NpnHk0w8GqKY1g
         9K1WtKTIC2lOSR2u71VZsq6hsJLrhCfCPetEoqpFcAz/AicKJvbB0FOZK1dkMNXoFah6
         vzsA/wd5O2u03GfI/sg7GE+ffgHkt/mQH0aBbLvYvpCBn20zojEqKur3EN01d0y5yVlG
         X2Tw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530yCl/5tJ37OiFZgluJX54U6jGEf78Fq7GLSqQeJa0wWISpbcxj
	1FDsgd/d2WTwld3p+SL6c9o=
X-Google-Smtp-Source: ABdhPJw1mC3qd1W5Vj3/+ajun1MczIpMm4f8vOFxA5+/9EoDh5kq8+MEEdDa5yaCg42geueiCTMmWw==
X-Received: by 2002:a62:1b88:0:b029:1fb:d3d0:343a with SMTP id b130-20020a621b880000b02901fbd3d0343amr2541131pfb.76.1616462364762;
        Mon, 22 Mar 2021 18:19:24 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:ed11:: with SMTP id b17ls7525061pld.10.gmail; Mon,
 22 Mar 2021 18:19:24 -0700 (PDT)
X-Received: by 2002:a17:902:7e4a:b029:e5:d1cf:27e4 with SMTP id a10-20020a1709027e4ab02900e5d1cf27e4mr2324210pln.69.1616462363912;
        Mon, 22 Mar 2021 18:19:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616462363; cv=none;
        d=google.com; s=arc-20160816;
        b=fvMtW4ZxOO778G6R4wbiYFGR4wGx+kI1R/zV5RlGQOa0C8TpV/hrUqGyYYnmN7j+tT
         e/frA5wrWcv1noh3O1Z5nu6cgPrnsRJ/1Aj/ribqzEAQulydlLXBkwvhsy0tYA98yf3y
         +g9Cvg+YQOMtocoTIl9n4f6RE6p7mytUtOTr7XJTW50FpF54hhmuMROIQM+s/6F/dVxR
         yohnpQzJPDWMDAjIe/LLWufuM5PE+2CWNqyDGfEwPUhi98T+RlpA/4OoPmaDGU9rnSP5
         IrdA8ftdANfXWaOPufRl1vSY5Y14Hi5vXQXT5dcfZLojNfB7P4HJSq3VVUlH+qIy9eWf
         FrpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=asbIx0Dg/9NGhL8ZJSAVC3uGpHAZka3OKuPVSVwGENA=;
        b=kSCjTTNO0/5JYL6qN3pUW3Z+WKEx+pzbaRwQ5TJUViRrH/NzIXFIag+7ZmFer+ntey
         c+rT8FqVn1AW2L5gN/DuTTqxZVXj3s9xgx2J0GXn/Cff416veaKw9XZ/9XMDMu8B1tFW
         xwwiu6LECEocaHSDFI3pFdOVXYTbkezEEU/9UbWr7SvtCes2J+mBN57s/VQnvLZVXbhB
         rxKGCOw1LFxWflntqazr7hwE+iS6euDY0SlBaw1kZbqNaba8vuVODezzE2uzH/jY9V3L
         LEP2JKva6V59yJW/p9KQKA1cNozmeIQXOtotYKn8SWHsHek/pbK0notP374y3YYOBwws
         fEYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=wubo40@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id nv12si50467pjb.3.2021.03.22.18.19.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Mar 2021 18:19:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4F4D3l5mJMznVRG;
	Tue, 23 Mar 2021 09:16:51 +0800 (CST)
Received: from [10.174.177.87] (10.174.177.87) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.498.0; Tue, 23 Mar 2021 09:19:15 +0800
Subject: Re: [PATCH V2] scsi: iscsi_tcp: Fix use-after-free when do
 get_host_param
To: <open-iscsi@googlegroups.com>, <michael.christie@oracle.com>,
	<lduncan@suse.com>, <cleech@redhat.com>, <jejb@linux.ibm.com>,
	<martin.petersen@oracle.com>, <michaelc@cs.wisc.edu>,
	<James.Bottomley@suse.de>
CC: <linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linfeilong@huawei.com>, <haowenchao@huawei.com>
References: <1616309229-612596-1-git-send-email-wubo40@huawei.com>
 <2fb1bffa-0717-f3b0-cdd6-2960a898b496@oracle.com>
From: Wu Bo <wubo40@huawei.com>
Message-ID: <ee03422c-85fe-5ecc-cd14-8c11a6ac2569@huawei.com>
Date: Tue, 23 Mar 2021 09:19:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <2fb1bffa-0717-f3b0-cdd6-2960a898b496@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.174.177.87]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=huawei.com
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

On 2021/3/22 4:21, michael.christie@oracle.com wrote:
> On 3/21/21 1:47 AM, Wu Bo wrote:
>> From: Wu Bo <wubo40@huawei.com>
>>
>> iscsid(cpu1): Logout of iscsi session, will do destroy session,
>> tcp_sw_host->session is not set to NULL before release the iscsi session.
>> in the iscsi_sw_tcp_session_destroy().
>>
>> iscsadm(cpu2): Get host parameters access to tcp_sw_host->session in the
>> iscsi_sw_tcp_host_get_param(), tcp_sw_host->session is not NULL,
>> but pointed to a freed space.
>>
>> Add ihost->lock and kref to protect the session,
>> between get host parameters and destroy iscsi session.
>>
>> [29844.848044] sd 2:0:0:1: [sdj] Synchronizing SCSI cache
>> [29844.923745] scsi 2:0:0:1: alua: Detached
>> [29844.927840] ==================================================================
>> [29844.927861] BUG: KASAN: use-after-free in iscsi_sw_tcp_host_get_param+0xf4/0x218 [iscsi_tcp]
>> [29844.927864] Read of size 8 at addr ffff80002c0b8f68 by task iscsiadm/523945
>> [29844.927871] CPU: 1 PID: 523945 Comm: iscsiadm Kdump: loaded Not tainted 4.19.90.kasan.aarch64
>> [29844.927873] Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
>> [29844.927875] Call trace:
>> [29844.927884]  dump_backtrace+0x0/0x270
>> [29844.927886]  show_stack+0x24/0x30
>> [29844.927895]  dump_stack+0xc4/0x120
>> [29844.927902]  print_address_description+0x68/0x278
>> [29844.927904]  kasan_report+0x20c/0x338
>> [29844.927906]  __asan_load8+0x88/0xb0
>> [29844.927910]  iscsi_sw_tcp_host_get_param+0xf4/0x218 [iscsi_tcp]
>> [29844.927932]  show_host_param_ISCSI_HOST_PARAM_IPADDRESS+0x84/0xa0 [scsi_transport_iscsi]
>> [29844.927938]  dev_attr_show+0x48/0x90
>> [29844.927943]  sysfs_kf_seq_show+0x100/0x1e0
>> [29844.927946]  kernfs_seq_show+0x88/0xa0
>> [29844.927949]  seq_read+0x164/0x748
>> [29844.927951]  kernfs_fop_read+0x204/0x308
>> [29844.927956]  __vfs_read+0xd4/0x2d8
>> [29844.927958]  vfs_read+0xa8/0x198
>> [29844.927960]  ksys_read+0xd0/0x180
>> [29844.927962]  __arm64_sys_read+0x4c/0x60
>> [29844.927966]  el0_svc_common+0xa8/0x230
>> [29844.927969]  el0_svc_handler+0xdc/0x138
>> [29844.927971]  el0_svc+0x10/0x218
>>
>> [29844.928063] Freed by task 53358:
>> [29844.928066]  __kasan_slab_free+0x120/0x228
>> [29844.928068]  kasan_slab_free+0x10/0x18
>> [29844.928069]  kfree+0x98/0x278
>> [29844.928083]  iscsi_session_release+0x84/0xa0 [scsi_transport_iscsi]
>> [29844.928085]  device_release+0x4c/0x100
>> [29844.928089]  kobject_put+0xc4/0x288
>> [29844.928091]  put_device+0x24/0x30
>> [29844.928105]  iscsi_free_session+0x60/0x70 [scsi_transport_iscsi]
>> [29844.928112]  iscsi_session_teardown+0x134/0x158 [libiscsi]
>> [29844.928116]  iscsi_sw_tcp_session_destroy+0x7c/0xd8 [iscsi_tcp]
>> [29844.928129]  iscsi_if_rx+0x1538/0x1f00 [scsi_transport_iscsi]
>> [29844.928131]  netlink_unicast+0x338/0x3c8
>> [29844.928133]  netlink_sendmsg+0x51c/0x588
>> [29844.928135]  sock_sendmsg+0x74/0x98
>> [29844.928137]  ___sys_sendmsg+0x434/0x470
>> [29844.928139]  __sys_sendmsg+0xd4/0x148
>> [29844.928141]  __arm64_sys_sendmsg+0x50/0x60
>> [29844.928143]  el0_svc_common+0xa8/0x230
>> [29844.928146]  el0_svc_handler+0xdc/0x138
>> [29844.928147]  el0_svc+0x10/0x218
>> [29844.928148]
>> [29844.928150] The buggy address belongs to the object at ffff80002c0b8880#012 which belongs to the cache kmalloc-2048 of size 2048
>> [29844.928153] The buggy address is located 1768 bytes inside of#012 2048-byte region [ffff80002c0b8880, ffff80002c0b9080)
>> [29844.928154] The buggy address belongs to the page:
>> [29844.928158] page:ffff7e0000b02e00 count:1 mapcount:0 mapping:ffff8000d8402600 index:0x0 compound_mapcount: 0
>> [29844.928902] flags: 0x7fffe0000008100(slab|head)
>> [29844.929215] raw: 07fffe0000008100 ffff7e0003535e08 ffff7e00024a9408 ffff8000d8402600
>> [29844.929217] raw: 0000000000000000 00000000000f000f 00000001ffffffff 0000000000000000
>> [29844.929219] page dumped because: kasan: bad access detected
>> [29844.929219]
>> [29844.929221] Memory state around the buggy address:
>> [29844.929223]  ffff80002c0b8e00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>> [29844.929225]  ffff80002c0b8e80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>> [29844.929227] >ffff80002c0b8f00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>> [29844.929228]                                                           ^
>> [29844.929230]  ffff80002c0b8f80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>> [29844.929232]  ffff80002c0b9000: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>> [29844.929232] ==================================================================
>> [29844.929234] Disabling lock debugging due to kernel taint
>> [29844.969534] scsi host2: iSCSI Initiator over TCP/IP
>>
>> Fixes: a79af8a64d39 ("[SCSI] iscsi_tcp: use iscsi_conn_get_addr_param libiscsi function")
>> Signed-off-by: Wu Bo <wubo40@huawei.com>
>> Signed-off-by: WenChao Hao <haowenchao@huawei.com>
>> ---
>>   drivers/scsi/iscsi_tcp.c | 23 +++++++++++++++++++++--
>>   1 file changed, 21 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
>> index 93ce990..579aa80 100644
>> --- a/drivers/scsi/iscsi_tcp.c
>> +++ b/drivers/scsi/iscsi_tcp.c
>> @@ -783,22 +783,32 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
>>   				       enum iscsi_host_param param, char *buf)
>>   {
>>   	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
>> -	struct iscsi_session *session = tcp_sw_host->session;
>> +	struct iscsi_session *session;
>> +	struct iscsi_host *ihost = shost_priv(shost);
>>   	struct iscsi_conn *conn;
>>   	struct iscsi_tcp_conn *tcp_conn;
>>   	struct iscsi_sw_tcp_conn *tcp_sw_conn;
>>   	struct sockaddr_in6 addr;
>> +	unsigned long flags;
>>   	int rc;
>>   
>>   	switch (param) {
>>   	case ISCSI_HOST_PARAM_IPADDRESS:
>> -		if (!session)
>> +		spin_lock_irqsave(&ihost->lock, flags);
>> +		session = tcp_sw_host->session;
>> +		if (!session) {
>> +			spin_unlock_irqrestore(&ihost->lock, flags);
>>   			return -ENOTCONN;
>> +		}
>> +
>> +		get_device(&(session->cls_session->dev));
>> +		spin_unlock_irqrestore(&ihost->lock, flags);
>>   
>>   		spin_lock_bh(&session->frwd_lock);
>>   		conn = session->leadconn;
>>   		if (!conn) {
>>   			spin_unlock_bh(&session->frwd_lock);
>> +			put_device(&(session->cls_session->dev));
>>   			return -ENOTCONN;
>>   		}
>>   		tcp_conn = conn->dd_data;
>> @@ -806,12 +816,14 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
>>   		tcp_sw_conn = tcp_conn->dd_data;
>>   		if (!tcp_sw_conn->sock) {
>>   			spin_unlock_bh(&session->frwd_lock);
>> +			put_device(&(session->cls_session->dev));
>>   			return -ENOTCONN;
>>   		}
>>   
>>   		rc = kernel_getsockname(tcp_sw_conn->sock,
>>   					(struct sockaddr *)&addr);
>>   		spin_unlock_bh(&session->frwd_lock);
>> +		put_device(&(session->cls_session->dev));
>>   		if (rc < 0)
>>   			return rc;
>>   
>> @@ -901,10 +913,17 @@ static void iscsi_sw_tcp_session_destroy(struct iscsi_cls_session *cls_session)
>>   {
>>   	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
>>   	struct iscsi_session *session = cls_session->dd_data;
>> +	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
>> +	struct iscsi_host *ihost = shost_priv(shost);
>> +	unsigned long flags;
>>   
>>   	if (WARN_ON_ONCE(session->leadconn))
>>   		return;
>>   
>> +	spin_lock_irqsave(&ihost->lock, flags);
>> +	tcp_sw_host->session = NULL;
>> +	spin_unlock_irqrestore(&ihost->lock, flags);
>> +
>>   	iscsi_tcp_r2tpool_free(cls_session->dd_data);
>>   	iscsi_session_teardown(cls_session);
>>   
> 
> We are tearing down the structs in the wrong order. I think sysfs removal
> functions will wait for users accessing the object, so we can do:
> 
> 1. remove session from sysfs (iscsi_remove_session)
> 2. remove host from syfs (iscsi_host_remove)
> 
> At this point we userspace is not accessing the host and session structs so
> we can start to tear them down.
> 
> 3. free session: iscsi_tcp_r2tpool_free, a modified iscsi_session_teardown
> that only does iscsi_free_session instead of iscsi_destroy_session.
> 4. free host (iscsi_host_free).
> 
> Before the device_del function waited for userspace to release refcounts
> for sysfs accesses we could have also moved some of thise to a release function.
> 

Hi,

Thank you for your suggestion, I will try to modify tearing down the 
structs order and send the V3 version after testing.

Thanks.


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ee03422c-85fe-5ecc-cd14-8c11a6ac2569%40huawei.com.
