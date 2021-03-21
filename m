Return-Path: <open-iscsi+bncBDO7B5X3UIBBB6FM3OBAMGQETRXHMWA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 458553430F3
	for <lists+open-iscsi@lfdr.de>; Sun, 21 Mar 2021 06:15:38 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id x20sf25832093qvd.21
        for <lists+open-iscsi@lfdr.de>; Sat, 20 Mar 2021 22:15:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616303737; cv=pass;
        d=google.com; s=arc-20160816;
        b=aP172D3P6pELFMePlWjdBQL6RAdQaQKOybgrz/IWmJI2IV+F1prH9sS6O+6+Pb4pVC
         MQPqMcpuX0ctMo1/PDb4Sz/WO24VeIB+O9uPXSA0QpN0n3PTZFy2BNYMebSxWOnPcw1s
         za5dhxAQujJaxJyTVIxNMhS4z+2c1A/94AmkIZ3Ui0qv8zGCVIoTjZhu643dQkkf+7q7
         6WPSqYWd430bYelKyy4P4lv0NaJDhmT0qtMoaMhxsXQS/Vv1Qu82TMW68ugmbTsxlzp8
         jOUMl2LWZOmnCK7imJ4kaB22Fe4ypZM9vBwaOzpr16frvto/6rbBJTHVGmUwqlsZVE6W
         aOIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=sza0t3XWpViIntcy0Ak6iLUNfdewai2hOTctL9aUFbc=;
        b=Sh/ErJa5jIqVuejearn3adqThZ61K0P/nmLN+y3mYBnm+lq8CrLmWzQ4CHwNYUfLvr
         r01FRIxE8Z6MjGQxbanQBcjb+IGKFzQoDjWCSJBVDIlWlIsewPbo5PGaAszPf5Gdao4v
         FMkhL7aLJPqap0vC+Qs9208nOMOinmZa1NkQjhBV40g746ezCmp5PD7Xu8xXlFjGn25v
         EyA/PbbK0opox51L/Jrbj7k5Ly7WgKWindvlK9F22X6fnyszU2HBkl3PkkzbFQHPwIV7
         8fbqDciHwZL2kZfP0yZZqXsX3a14YlTLBC+QR0OgePis4ZIcRs++GcjOVmjuVjWN2T7K
         vILA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=wubo40@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sza0t3XWpViIntcy0Ak6iLUNfdewai2hOTctL9aUFbc=;
        b=Z6xj6G5X7klyqiROO94eR16jRnnfgKE271YORnqV/sNJbRxIWwXi+W4ZG2HokI8zZa
         OaSCzOIUpkZoW0jOJTTWfLivGRRGffr89mHn1QO5p81TY1a/MG9Ok2/uCEv/SDAzQx6J
         z/zL48/Q+jI5WnKFsMUljIlg2s/EAN+COHwUhPtXNKvqxtyUjXWLsWwp4FuMgsfP3q9P
         5oPKKBHertAksTJz/lhU2cKYadLyQGWGOpqTPXk1g1QPBTWs5wEznGYn1s4jy2zo0/zL
         swNvhnSz22N1Nvod86xcmgfRujtoprIWoz/HLHe7R1V1k3S7+pp1dvcXdo4eLK5YVa1p
         U3wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sza0t3XWpViIntcy0Ak6iLUNfdewai2hOTctL9aUFbc=;
        b=UTWpcG036sP8BSmG8Yi04MEA2Ms9yMzaiOXZTIXdf/eEpZVOT1le9qQTSV9kuKamcW
         Qq/qTjvb0a+cc68dzMpbQYbuQlIfcwZv0zvTqSEM7MakaMtqXESsVSaKKPN5UXlOTkWo
         J24RohmFfExMEzRK3ul8rphl6uUIeiJmLiJg707/1hrCkLGt/znNsjx6qzRMPInRN0f5
         lrLmR4hcY+J6TfN+DAKFmfVqi4OE/92MWWMaiJN+cm3lQH1LTdQbdMvou7xNxKyldPit
         67ugW6RxUh9m3mVsptZhEKioi2PqQX+C5mtdHF/EfqaxsOv4ARUn4SBwj3KEbtA/B500
         nacQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531jwubrcOliAgeJZbRFAzREaC+PYetwKfW7P/SOtmYGUKLBd1vo
	+81WZtjrEDOjxXyIXo84aHU=
X-Google-Smtp-Source: ABdhPJzhwnPaPKg9C2Ch4lsw0CLFs1jXiqnfmAcElTDITPRoqMcezC6pVBYqVK3hhEGXyMiBWZNSXg==
X-Received: by 2002:a0c:ef11:: with SMTP id t17mr16035529qvr.21.1616303737133;
        Sat, 20 Mar 2021 22:15:37 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:400e:: with SMTP id h14ls1267731qko.11.gmail; Sat,
 20 Mar 2021 22:15:36 -0700 (PDT)
X-Received: by 2002:a05:620a:1477:: with SMTP id j23mr5336547qkl.416.1616303736626;
        Sat, 20 Mar 2021 22:15:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616303736; cv=none;
        d=google.com; s=arc-20160816;
        b=OhPlFwfDyXjr58cGYrST41qrJsAE5+DBhcYv1TdWQuCsW8Tc81qbQDhBjP+Vy+3CSj
         pO8eDDedSYrRzcE3hbeudRinY6ElxiKWfV9R0ep+lX6o439gz73TJEvvKR8HQkHw+8Xt
         oG0byqVw/GxfRcPoPdzlQL7+jEw7jxGHbdsYKHZIfqyZkZku/Y9w6dEor+wS+AahfE1v
         x/YhoZAKUAa8DdIvIgk7pVFPuxlQYYFGGprH4wD3VomwL03mbq2GWf6pRskbft9sgMAt
         spWtgKlveA/VmqkW+h2BLrPUkqn31UExOgnZ5LU1AtN1iGYmlNUJwwr1eWOVHnZCxfWs
         USJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=lfQmi3gikvuPv55GglS9FJDy10b14MrYkOFop3Zk9kQ=;
        b=A2uE/aDysH3pigy26sJ4Xo37Cg1tpeJw1ABY3XrF52vr3oy/zHVnRs9aXIl3yKXsiG
         DihZAiBDM2WyebCK/XesWVN6ucIdODCJuCz4mW8pbV1gsQpwT6qmtuVwCSO6e+fTXGAc
         G81R8Rh873Vnh1Vc1FSzkEUQgyP7ggjcOgMFjlcRdfkTY0/pIuR/gzjSm6Z2riCJo/Zm
         ChiE28QQ5GgDNXpCj9hksa2BTjqkUvjfZZ4/sfagEo31augsTk07f1r76g42XKvCqzh6
         ID3/A9DbTKpo6/3LKXUQnX1kNt1CupSe6aag4y+qjB0HnJVbRsO6RrI8BUUS8Bf/VG4J
         SqVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=wubo40@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id b201si605338qkg.6.2021.03.20.22.15.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Mar 2021 22:15:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4F35PF35bjzNmJB;
	Sun, 21 Mar 2021 13:13:05 +0800 (CST)
Received: from [10.174.177.87] (10.174.177.87) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.498.0; Sun, 21 Mar 2021 13:15:27 +0800
Subject: Re: [PATCH] scsi: iscsi_tcp: Fix use-after-free when do
 get_host_param
To: <lduncan@suse.com>, <cleech@redhat.com>, <jejb@linux.ibm.com>,
	<martin.petersen@oracle.com>, <michaelc@cs.wisc.edu>,
	<James.Bottomley@suse.de>, <linux-scsi@vger.kernel.org>,
	<open-iscsi@googlegroups.com>, <linux-kernel@vger.kernel.org>
CC: <linfeilong@huawei.com>, <haowenchao@huawei.com>
References: <1616231284-463105-1-git-send-email-wubo40@huawei.com>
From: Wu Bo <wubo40@huawei.com>
Message-ID: <be3a02ef-7cb5-d579-074f-91423dc1a5cc@huawei.com>
Date: Sun, 21 Mar 2021 13:15:27 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <1616231284-463105-1-git-send-email-wubo40@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.174.177.87]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.191 as
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

On 2021/3/20 17:08, Wu Bo wrote:
> When logout of iscsi session, to do destroy session process,
> tcp_sw_host->session is not set to NULL.
> Get host parameters access to tcp_sw_host->session at the same time,
> but the session has been released at this time.
> 
> [29844.848044] sd 2:0:0:1: [sdj] Synchronizing SCSI cache
> [29844.923745] scsi 2:0:0:1: alua: Detached
> [29844.927840] ==================================================================
> [29844.927861] BUG: KASAN: use-after-free in iscsi_sw_tcp_host_get_param+0xf4/0x218 [iscsi_tcp]
> [29844.927864] Read of size 8 at addr ffff80002c0b8f68 by task iscsiadm/523945
> [29844.927871] CPU: 1 PID: 523945 Comm: iscsiadm Kdump: loaded Not tainted 4.19.90.kasan.aarch64
> [29844.927873] Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
> [29844.927875] Call trace:
> [29844.927884]  dump_backtrace+0x0/0x270
> [29844.927886]  show_stack+0x24/0x30
> [29844.927895]  dump_stack+0xc4/0x120
> [29844.927902]  print_address_description+0x68/0x278
> [29844.927904]  kasan_report+0x20c/0x338
> [29844.927906]  __asan_load8+0x88/0xb0
> [29844.927910]  iscsi_sw_tcp_host_get_param+0xf4/0x218 [iscsi_tcp]
> [29844.927932]  show_host_param_ISCSI_HOST_PARAM_IPADDRESS+0x84/0xa0 [scsi_transport_iscsi]
> [29844.927938]  dev_attr_show+0x48/0x90
> [29844.927943]  sysfs_kf_seq_show+0x100/0x1e0
> [29844.927946]  kernfs_seq_show+0x88/0xa0
> [29844.927949]  seq_read+0x164/0x748
> [29844.927951]  kernfs_fop_read+0x204/0x308
> [29844.927956]  __vfs_read+0xd4/0x2d8
> [29844.927958]  vfs_read+0xa8/0x198
> [29844.927960]  ksys_read+0xd0/0x180
> [29844.927962]  __arm64_sys_read+0x4c/0x60
> [29844.927966]  el0_svc_common+0xa8/0x230
> [29844.927969]  el0_svc_handler+0xdc/0x138
> [29844.927971]  el0_svc+0x10/0x218
> [29844.928063] Freed by task 53358:
> [29844.928066]  __kasan_slab_free+0x120/0x228
> [29844.928068]  kasan_slab_free+0x10/0x18
> [29844.928069]  kfree+0x98/0x278
> [29844.928083]  iscsi_session_release+0x84/0xa0 [scsi_transport_iscsi]
> [29844.928085]  device_release+0x4c/0x100
> [29844.928089]  kobject_put+0xc4/0x288
> [29844.928091]  put_device+0x24/0x30
> [29844.928105]  iscsi_free_session+0x60/0x70 [scsi_transport_iscsi]
> [29844.928112]  iscsi_session_teardown+0x134/0x158 [libiscsi]
> [29844.928116]  iscsi_sw_tcp_session_destroy+0x7c/0xd8 [iscsi_tcp]
> [29844.928129]  iscsi_if_rx+0x1538/0x1f00 [scsi_transport_iscsi]
> [29844.928131]  netlink_unicast+0x338/0x3c8
> [29844.928133]  netlink_sendmsg+0x51c/0x588
> [29844.928135]  sock_sendmsg+0x74/0x98
> [29844.928137]  ___sys_sendmsg+0x434/0x470
> [29844.928139]  __sys_sendmsg+0xd4/0x148
> [29844.928141]  __arm64_sys_sendmsg+0x50/0x60
> [29844.928143]  el0_svc_common+0xa8/0x230
> [29844.928146]  el0_svc_handler+0xdc/0x138
> [29844.928147]  el0_svc+0x10/0x218
> [29844.928148]
> [29844.928150] The buggy address belongs to the object at ffff80002c0b8880#012 which belongs to the cache kmalloc-2048 of size 2048
> [29844.928153] The buggy address is located 1768 bytes inside of#012 2048-byte region [ffff80002c0b8880, ffff80002c0b9080)
> [29844.928154] The buggy address belongs to the page:
> [29844.928158] page:ffff7e0000b02e00 count:1 mapcount:0 mapping:ffff8000d8402600 index:0x0 compound_mapcount: 0
> [29844.928902] flags: 0x7fffe0000008100(slab|head)
> [29844.929215] raw: 07fffe0000008100 ffff7e0003535e08 ffff7e00024a9408 ffff8000d8402600
> [29844.929217] raw: 0000000000000000 00000000000f000f 00000001ffffffff 0000000000000000
> [29844.929219] page dumped because: kasan: bad access detected
> [29844.929219]
> [29844.929221] Memory state around the buggy address:
> [29844.929223]  ffff80002c0b8e00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [29844.929225]  ffff80002c0b8e80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [29844.929227] >ffff80002c0b8f00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [29844.929228]                                                           ^
> [29844.929230]  ffff80002c0b8f80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [29844.929232]  ffff80002c0b9000: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [29844.929232] ==================================================================
> [29844.929234] Disabling lock debugging due to kernel taint
> [29844.969534] scsi host2: iSCSI Initiator over TCP/IP
> 
> Fixes: a79af8a64d39 ("[SCSI] iscsi_tcp: use iscsi_conn_get_addr_param libiscsi function")
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> Signed-off-by: WenChao Hao <haowenchao@huawei.com>
> ---
>   drivers/scsi/iscsi_tcp.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index dd33ce0..98d782d 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -901,10 +901,12 @@ static void iscsi_sw_tcp_session_destroy(struct iscsi_cls_session *cls_session)
>   {
>   	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
>   	struct iscsi_session *session = cls_session->dd_data;
> +	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
>   
>   	if (WARN_ON_ONCE(session->leadconn))
>   		return;
>   
> +	tcp_sw_host->session = NULL;
>   	iscsi_tcp_r2tpool_free(cls_session->dd_data);
>   	iscsi_session_teardown(cls_session);
>   
> 

Please ignore this patch, it cannot completely fix the use-after-free 
issuss.


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/be3a02ef-7cb5-d579-074f-91423dc1a5cc%40huawei.com.
