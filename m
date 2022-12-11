Return-Path: <open-iscsi+bncBC63XVGIQQLRBYEM2WOAMGQE5UZUYOA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AC6649217
	for <lists+open-iscsi@lfdr.de>; Sun, 11 Dec 2022 03:54:28 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id z1-20020a17090a66c100b002196a0895a6sf4754309pjl.5
        for <lists+open-iscsi@lfdr.de>; Sat, 10 Dec 2022 18:54:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670727266; cv=pass;
        d=google.com; s=arc-20160816;
        b=rOdHkz2qhzd09pwnODPBmVw2xyWX6x96fzHjb6mfgj82vcbAqHOvlmQ27FFSi0GGxX
         spHDGW1vNKx9OKsYsBJYu3aYUTCS5YBFC1BwuSRURO+MwssQiaRoRdnbKg1pvNWI7DTI
         NMw7BaDYF8D06bE5LUnZ8UCVTvowlVgFUs7lxD47swDsQW+KDyNB1AREbvQSMm9RFq++
         c6eKSzAbFHUYpZkiv0kk9jOm/8RZNqOswX5YBEI8mTwsRT6a0XykTKqSzO5igifgM0pC
         hSgm7cKOjbW9HVusBBXBo5VPKRJD9+UB8gu8UO7W9XzxKc0TYwe4kRCtL1QbQ7HDPbSH
         Dyag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:dkim-signature;
        bh=LlLx4EsmVLMCnHbTUOKPSyCKJ2+cLz1D6PdDpuPveM0=;
        b=SeexKlilNqFDxJ3fybDrLQO5pze3ZSFokC9laz6mm2UrHDyYBroQSuhrVi+y6nplKx
         J20FBdzCI9oAaUjSxS25aZdnQt00AJJ9A42cUHlb1lIiLhifMnZUTRSqSXMyOlPW3zMU
         HeI6IGhI/nOn4eZEoxB/ZVeG1BUexpyPO7nR+ORMdYZd9Hcq9Gd5VwAGgnuQgLoG+PHA
         F0mabjDYRpYtjlPucIK6GI2C4pa2cf1ji+aTq2655q6YImVwcBvncrTCQvVLXwA3ktBM
         E6jNbU6IXmMpPET60KbscYahmUN0fVJ7j0Pu72R+yJfuYZpcFl1/ZunMFYmQKnm6osNJ
         WSRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 103.129.254.84 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=LlLx4EsmVLMCnHbTUOKPSyCKJ2+cLz1D6PdDpuPveM0=;
        b=cI5rhyYykLEW3WLiyv8QgsP2xYwPINwmjK1S0enLwQgfVjKhp/Iii2dAnS+jqoCiEh
         GpXyv0IwifK+nwOmCkyrEq5HAF6PqDMonBHKmZdTbNkFp11yepbBnKP5TqHuVN8ZRfUb
         f7C5J4nb9t0gbUHe6MhyyoL1+flvD3PbDP+3o2qvdPkR30nVZwGaAzipbzH4B2Ko3HNF
         U1uh0p3JgCIx7AnjKX2VxDm6RwxOrDJNbMk5BI3cwTOGQRazz2jOLoMP0ofeUt0XwcWC
         LHcwFpmxV1lVo7rt/8McPKPkHwPGOzlWPdfVJW5wzRoR7StWBJMiPbkb5ZkYMio6oYaX
         B+wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LlLx4EsmVLMCnHbTUOKPSyCKJ2+cLz1D6PdDpuPveM0=;
        b=dX/LkgBS1jsYoEH1NC+k4YfAl9QTVPmVBY/pWwbAtuG12lEeSqFgATWBfazYlo6CfP
         0VgdKCiwFiG2h9zf/ajq0TQIl78WI/zvcyGoqKznCTY7a0GiFyif8YSwy6b2pVTfGGBU
         gim7LmM5u6f1Cf+61Zrko7HZ2zXF24x3nLkmqyEHGDrScvMk5U+gDIr9ta8KuCz+6c7o
         UVyrVtuNvrI6iFZhlVYLhjHn7RmvIcGMJPi0R/AAoYOmZWLLLhonvCuQJAt1kSs84AYt
         8T+SMU4rDf/s3OFNAuIJyI1VUREDOYqyPrIk+bdgml/0CT2GIA1nsTGr+LVxKyqD37x/
         UA2Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnyMYT//HvZig9iqI77sT7HRod1L3Tju44qB/mRB6Br1XUi3wf0
	M3Hi8fLWBR+HI/cug8xUAjs=
X-Google-Smtp-Source: AA0mqf6VQzewzPA0eKGtEywxNXFvJVvWH87lkhQ+Hb7VDynn1NoXnVqMwCiGdIwIaIuuOu1UIKUZLg==
X-Received: by 2002:a63:110d:0:b0:46e:bcc1:28df with SMTP id g13-20020a63110d000000b0046ebcc128dfmr68917083pgl.187.1670727266601;
        Sat, 10 Dec 2022 18:54:26 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:7143:b0:202:a0c3:702 with SMTP id
 g3-20020a17090a714300b00202a0c30702ls12805300pjs.1.-pod-control-gmail; Sat,
 10 Dec 2022 18:54:24 -0800 (PST)
X-Received: by 2002:a17:903:2448:b0:189:f277:3830 with SMTP id l8-20020a170903244800b00189f2773830mr17277554pls.68.1670727264185;
        Sat, 10 Dec 2022 18:54:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670727264; cv=none;
        d=google.com; s=arc-20160816;
        b=y8tNWmG1XisW/Jf9IvVXCtxbhRtkJNGxzAhGYwXLju+qfuvCQjXK5p61hmCsKK7lvF
         obbWPbceUXK/MBfSgb9lKl8IpcLKxGyTX1KWqsJb3lwtBTjIVnM+DZXm/njHJ8/kobMh
         HgnPOcs8JkGbH7hXWymUjOFF5ldYKVZmrPqAbdAqKAAjzBEo6RkSbyp8uRfvU5GCRd/d
         uUZfR4evQfscjmtBQ5+BzMCgy1UvR40AdwrLEXcT2G4MNEe6vnTyiPD0h/lIV24y1XjR
         Rwn1XtrW0P7eyWyWemIC94Fow2BmENkCTE7qX/05pW1sBF1VrNLZZkJqmDfAaqedAfTi
         HvPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=9/Vg5p0CIJWlPclfcdTGovSX+0t8EibbIUaOlHTvn5g=;
        b=CzMMAKvMyOTLodN/ijh962OEuKPym5RojVXHT7UD1Y3WL1oHDp45BAqebGUNFo3Toc
         K0DnXRttf8ptFrQeeuqgYjGGSKjhhyn0DWzP/KuZmUby9vGkpjwQM+/xM6UPYPviNJ10
         2IviP4OkUr5682M4pbgb7BJk+alUNNF3VNv3ZxJA89V9A6bivy1Y8eRvLoIkNpiHhLdp
         WXhz96oKzaPgfFJd4jBjydItOOq6HOhwpkr6Riso8DzlngVJMUzpBI8O1YITyfGhXov0
         KJyrRllBTmchN2R469KO7IOEasnTg9GB/7xiHzINWgfAaY/8+WXj96BXsXXtVbGa8TSH
         JJeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 103.129.254.84 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Received: from mail-m25484.xmail.netease.com (mail-m25484.xmail.netease.com. [103.129.254.84])
        by gmr-mx.google.com with ESMTPS id u3-20020a17090341c300b0018734e1a0dcsi390107ple.0.2022.12.10.18.54.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Dec 2022 18:54:23 -0800 (PST)
Received-SPF: pass (google.com: domain of dinghui@sangfor.com.cn designates 103.129.254.84 as permitted sender) client-ip=103.129.254.84;
Received: from [IPV6:240e:3b7:3277:4a60:8d29:b66f:578c:d71b] (unknown [IPV6:240e:3b7:3277:4a60:8d29:b66f:578c:d71b])
	by mail-m12746.qiye.163.com (Hmail) with ESMTPA id 80169BC0196;
	Sun, 11 Dec 2022 10:54:18 +0800 (CST)
Message-ID: <fd20e5c4-34fa-3ab1-71cd-13e4febc3799@sangfor.com.cn>
Date: Sun, 11 Dec 2022 10:54:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:91.0)
 Gecko/20100101 Thunderbird/91.12.0
Subject: Re: [PATCH] scsi: iscsi_tcp: Fix UAF when access shost attr during
 session logout
Content-Language: en-US
To: Mike Christie <michael.christie@oracle.com>, lduncan@suse.com,
 cleech@redhat.com, jejb@linux.ibm.com, martin.petersen@oracle.com,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20221209082247.6330-1-dinghui@sangfor.com.cn>
 <ae9ee90e-e890-e054-6cf9-8acadd6012b9@oracle.com>
From: dinghui <dinghui@sangfor.com.cn>
In-Reply-To: <ae9ee90e-e890-e054-6cf9-8acadd6012b9@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTE5NVh5LHxoeTBhOSkhKSFUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlPSx5BSBlMQUhJTExBTxpNS0FDH0lCQRlNTR1BTkxDGEEfTEoZWVdZFhoPEhUdFF
	lBWU9LSFVKSktPSEhVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6P006DDo*GD0jFkk5ShBDIUpR
	LiswC0xVSlVKTUxLTElMSU5CSUxIVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
	QVlJT0seQUgZTEFISUxMQU8aTUtBQx9JQkEZTU0dQU5MQxhBH0xKGVlXWQgBWUFKSktISzcG
X-HM-Tid: 0a84ff1ad28cb219kuuu80169bc0196
X-Original-Sender: dinghui@sangfor.com.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dinghui@sangfor.com.cn designates 103.129.254.84 as
 permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
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

On 2022/12/11 6:04 =E4=B8=8A=E5=8D=88, Mike Christie wrote:
> On 12/9/22 2:22 AM, Ding Hui wrote:
>> During iscsi session logout, if another task accessing shost ipaddress
>> attr at this time, we can get a KASAN UAF report like this:
>>
>> [  276.941685] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> [  276.942144] BUG: KASAN: use-after-free in _raw_spin_lock_bh+0x78/0xe0
>> [  276.942535] Write of size 4 at addr ffff8881053b45b8 by task cat/4088
>> [  276.943511] CPU: 2 PID: 4088 Comm: cat Tainted: G            E      6=
.1.0-rc8+ #3
>> [  276.943997] Hardware name: VMware, Inc. VMware Virtual Platform/440BX=
 Desktop Reference Platform, BIOS 6.00 11/12/2020
>> [  276.944470] Call Trace:
>> [  276.944943]  <TASK>
>> [  276.945397]  dump_stack_lvl+0x34/0x48
>> [  276.945887]  print_address_description.constprop.0+0x86/0x1e7
>> [  276.946421]  print_report+0x36/0x4f
>> [  276.947358]  kasan_report+0xad/0x130
>> [  276.948234]  kasan_check_range+0x35/0x1c0
>> [  276.948674]  _raw_spin_lock_bh+0x78/0xe0
>> [  276.949989]  iscsi_sw_tcp_host_get_param+0xad/0x2e0 [iscsi_tcp]
>> [  276.951765]  show_host_param_ISCSI_HOST_PARAM_IPADDRESS+0xe9/0x130 [s=
csi_transport_iscsi]
>> [  276.952185]  dev_attr_show+0x3f/0x80
>> [  276.953005]  sysfs_kf_seq_show+0x1fb/0x3e0
>> [  276.953401]  seq_read_iter+0x402/0x1020
>> [  276.954260]  vfs_read+0x532/0x7b0
>> [  276.955113]  ksys_read+0xed/0x1c0
>> [  276.955952]  do_syscall_64+0x38/0x90
>> [  276.956347]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>> [  276.956769] RIP: 0033:0x7f5d3a679222
>> [  276.957161] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 32 c0 0b 00 e8 a5 fe =
01 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f 05 =
<48> 3d 00 f0 ff ff 77 56 c3 0f 1f 44 00 00 48 83 ec 28 48 89 54 24
>> [  276.958009] RSP: 002b:00007ffc864d16a8 EFLAGS: 00000246 ORIG_RAX: 000=
0000000000000
>> [  276.958431] RAX: ffffffffffffffda RBX: 0000000000020000 RCX: 00007f5d=
3a679222
>> [  276.958857] RDX: 0000000000020000 RSI: 00007f5d3a4fe000 RDI: 00000000=
00000003
>> [  276.959281] RBP: 00007f5d3a4fe000 R08: 00000000ffffffff R09: 00000000=
00000000
>> [  276.959682] R10: 0000000000000022 R11: 0000000000000246 R12: 00000000=
00020000
>> [  276.960126] R13: 0000000000000003 R14: 0000000000000000 R15: 0000557a=
26dada58
>> [  276.960536]  </TASK>
>> [  276.961357] Allocated by task 2209:
>> [  276.961756]  kasan_save_stack+0x1e/0x40
>> [  276.962170]  kasan_set_track+0x21/0x30
>> [  276.962557]  __kasan_kmalloc+0x7e/0x90
>> [  276.962923]  __kmalloc+0x5b/0x140
>> [  276.963308]  iscsi_alloc_session+0x28/0x840 [scsi_transport_iscsi]
>> [  276.963712]  iscsi_session_setup+0xda/0xba0 [libiscsi]
>> [  276.964078]  iscsi_sw_tcp_session_create+0x1fd/0x330 [iscsi_tcp]
>> [  276.964431]  iscsi_if_create_session.isra.0+0x50/0x260 [scsi_transpor=
t_iscsi]
>> [  276.964793]  iscsi_if_recv_msg+0xc5a/0x2660 [scsi_transport_iscsi]
>> [  276.965153]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
>> [  276.965546]  netlink_unicast+0x4d5/0x7b0
>> [  276.965905]  netlink_sendmsg+0x78d/0xc30
>> [  276.966236]  sock_sendmsg+0xe5/0x120
>> [  276.966576]  ____sys_sendmsg+0x5fe/0x860
>> [  276.966923]  ___sys_sendmsg+0xe0/0x170
>> [  276.967300]  __sys_sendmsg+0xc8/0x170
>> [  276.967666]  do_syscall_64+0x38/0x90
>> [  276.968028]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>> [  276.968773] Freed by task 2209:
>> [  276.969111]  kasan_save_stack+0x1e/0x40
>> [  276.969449]  kasan_set_track+0x21/0x30
>> [  276.969789]  kasan_save_free_info+0x2a/0x50
>> [  276.970146]  __kasan_slab_free+0x106/0x190
>> [  276.970470]  __kmem_cache_free+0x133/0x270
>> [  276.970816]  device_release+0x98/0x210
>> [  276.971145]  kobject_cleanup+0x101/0x360
>> [  276.971462]  iscsi_session_teardown+0x3fb/0x530 [libiscsi]
>> [  276.971775]  iscsi_sw_tcp_session_destroy+0xd8/0x130 [iscsi_tcp]
>> [  276.972143]  iscsi_if_recv_msg+0x1bf1/0x2660 [scsi_transport_iscsi]
>> [  276.972485]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
>> [  276.972808]  netlink_unicast+0x4d5/0x7b0
>> [  276.973201]  netlink_sendmsg+0x78d/0xc30
>> [  276.973544]  sock_sendmsg+0xe5/0x120
>> [  276.973864]  ____sys_sendmsg+0x5fe/0x860
>> [  276.974248]  ___sys_sendmsg+0xe0/0x170
>> [  276.974583]  __sys_sendmsg+0xc8/0x170
>> [  276.974891]  do_syscall_64+0x38/0x90
>> [  276.975216]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>>
>> We can easily reproduce by two tasks:
>> 1. while :; do iscsiadm -m node --login; iscsiadm -m node --logout; done
>> 2. while :; do cat /sys/devices/platform/host*/iscsi_host/host*/ipaddres=
s; done
>>
>>              iscsid                |        cat
>> ----------------------------------+-------------------------------------=
------------
>> |- iscsi_sw_tcp_session_destroy   |
>>    |- iscsi_session_teardown       |
>>      |- device_release             |
>>        |- iscsi_session_release    |  |- dev_attr_show
>>          |- kfree                  |    |- show_host_param_ISCSI_HOST_PA=
RAM_IPADDRESS
>>                                    |      |- iscsi_sw_tcp_host_get_param
>>                                    |        |- r/w tcp_sw_host->session =
(UAF)
>>    |- iscsi_host_remove            |
>>    |- iscsi_host_free              |
>>
>> Since shost hold a pointer to session which is belong to cls_session by =
its
>> priv tcp_sw_host, so we should get a ref of cls_session, and after
>> iscsi_host_remove() the sysfs is cleared, then we can drop the ref.
>>
> Nice bug report and thanks for the patch. I think though we should just
> split the removal from the freeing. The removal will wait on users
> accessing sysfs files for us, so once they return we know we can just
> free things.
>
> Something like this:

I applied your patch, and it works well.


Since this is more reasonable, could you ignore mine and submit your=20
patch instead please? I appreciate it.


--=20
Thanks,
-dinghui

>
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index 5fb1f364e815..751e4b19798b 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -982,10 +982,12 @@ static void iscsi_sw_tcp_session_destroy(struct isc=
si_cls_session *cls_session)
>   	if (WARN_ON_ONCE(session->leadconn))
>   		return;
>  =20
> +	iscsi_session_remove(cls_session);
> +	iscsi_host_remove(shost, false);
> +
>   	iscsi_tcp_r2tpool_free(cls_session->dd_data);
> -	iscsi_session_teardown(cls_session);
>  =20
> -	iscsi_host_remove(shost, false);
> +	iscsi_session_free(cls_session);
>   	iscsi_host_free(shost);
>   }
>  =20
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index ef2fc860257e..235957de1164 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -3104,17 +3104,27 @@ iscsi_session_setup(struct iscsi_transport *iscsi=
t, struct Scsi_Host *shost,
>   }
>   EXPORT_SYMBOL_GPL(iscsi_session_setup);
>  =20
> -/**
> - * iscsi_session_teardown - destroy session, host, and cls_session
> - * @cls_session: iscsi session
> +/*
> + * issi_session_remove - Remove session from iSCSI class.
>    */
> -void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
> +void iscsi_session_remove(struct iscsi_cls_session *cls_session)
>   {
>   	struct iscsi_session *session =3D cls_session->dd_data;
> -	struct module *owner =3D cls_session->transport->owner;
>   	struct Scsi_Host *shost =3D session->host;
>  =20
>   	iscsi_remove_session(cls_session);
> +	iscsi_host_dec_session_cnt(shost);
> +}
> +EXPORT_SYMBOL_GPL(iscsi_session_remove);
> +
> +/**
> + * iscsi_session_free - Free iscsi session and it's resources
> + * @cls_session: iscsi session
> + */
> +void iscsi_session_free(struct iscsi_cls_session *cls_session)
> +{
> +	struct iscsi_session *session =3D cls_session->dd_data;
> +	struct module *owner =3D cls_session->transport->owner;
>  =20
>   	iscsi_pool_free(&session->cmdpool);
>   	kfree(session->password);
> @@ -3132,10 +3142,19 @@ void iscsi_session_teardown(struct iscsi_cls_sess=
ion *cls_session)
>   	kfree(session->discovery_parent_type);
>  =20
>   	iscsi_free_session(cls_session);
> -
> -	iscsi_host_dec_session_cnt(shost);
>   	module_put(owner);
>   }
> +EXPORT_SYMBOL_GPL(iscsi_session_free);
> +
> +/**
> + * iscsi_session_teardown - destroy session and cls_session
> + * @cls_session: iscsi session
> + */
> +void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
> +{
> +	iscsi_session_remove(cls_session);
> +	iscsi_session_free(cls_session);
> +}
>   EXPORT_SYMBOL_GPL(iscsi_session_teardown);
>  =20
>   /**
> diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
> index 695eebc6f2c8..5cdeff776ce2 100644
> --- a/include/scsi/libiscsi.h
> +++ b/include/scsi/libiscsi.h
> @@ -422,6 +422,8 @@ extern int iscsi_host_get_max_scsi_cmds(struct Scsi_H=
ost *shost,
>   extern struct iscsi_cls_session *
>   iscsi_session_setup(struct iscsi_transport *, struct Scsi_Host *shost,
>   		    uint16_t, int, int, uint32_t, unsigned int);
> +extern void iscsi_session_remove(struct iscsi_cls_session *cls_session);
> +extern void iscsi_session_free(struct iscsi_cls_session *cls_session);
>   extern void iscsi_session_teardown(struct iscsi_cls_session *);
>   extern void iscsi_session_recovery_timedout(struct iscsi_cls_session *)=
;
>   extern int iscsi_set_param(struct iscsi_cls_conn *cls_conn,
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/fd20e5c4-34fa-3ab1-71cd-13e4febc3799%40sangfor.com.cn.
