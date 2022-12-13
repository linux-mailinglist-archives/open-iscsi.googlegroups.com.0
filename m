Return-Path: <open-iscsi+bncBC63XVGIQQLRBS774COAMGQEGVLZR2Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 0568664B1C2
	for <lists+open-iscsi@lfdr.de>; Tue, 13 Dec 2022 10:03:11 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id 7-20020a631547000000b00478959ba320sf9303342pgv.19
        for <lists+open-iscsi@lfdr.de>; Tue, 13 Dec 2022 01:03:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670922189; cv=pass;
        d=google.com; s=arc-20160816;
        b=MoE/JsGm+8V6+eLONEj62TeqsFdEHP5DTbH/Xete5h7KthRQ++sWw5285u8O/dQWNz
         fSLQBUncAad7odPC5vQHr4Dz1OTgdMiVaxwDmDhXSgzDuFFUBNDdrfnfP4CUdEk3c53L
         0mm5hfBWlFW5mG5bnOJybPRobFyIsHWy9OqIwe+ub533XvEjnNSL+S8BzQsdiaVWXyZY
         jltoHY4N7RW0VKPTpWs6aRknDpfucPQCfRx+w4Scrs4e5555i0AszWiaCmWfLeWysbe2
         COOCCShlMU5ByR+0/L8IkdtQ6WzxnV+q/K5kcSWEJzUQI3BO3U9QGbLZYWyKItCR7ojv
         d08A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=FQ5Boa7a9PeWYmf1avgmu2/hHAjuzdOTQW9yTF9bIBc=;
        b=uS/hwFFqS71npRsGG9BJTn0raXKKJltIcrsBYZb4n7kmcS06NuTCZOKQIHW3jGSTlX
         FfTu5Ky02FZWHTU2mpBOvkpcc4ft/TFZ+NygKJzp1Jn4MaWaqjEcHn5O1KDAuqkC3Hyg
         A+MnguE4BeawpgKIKcARmXgVByvmSVQ3QtPoHAOoq0NZCXkYxFgDaR9YukQZ+THGYGvz
         KLu9ndtJ0+zlDJQVlOCeNJBLfd0tZ/+1D/BYgc69w9YLBTuBPmI6DkFqfLxogWEAHVKg
         nTW1T+ZgfRNZ1b7/SVgs6MFyiJEnupXBRlG3xfI7KFWfw+EOsdes9hfnITPTp7PlcgeT
         ySVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 45.195.24.23 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FQ5Boa7a9PeWYmf1avgmu2/hHAjuzdOTQW9yTF9bIBc=;
        b=Qe0Ghgl4yfV3tO72/o4kWiZ+wRoU4u+jKy/5gLxQK1u6yt+t9+xWz3lZ0u2MZQlZ8f
         Vgyn1dKGoM0ZeWmmXXrgzjmUJCt6YMJ9sREXbeKbLw5b3uk4Ac5ge/bsbIdxpIlDBTUI
         NvIbBBmHiKMU6N8/FEZGZ8eY8pejC+WgO5mQq9xk4ovKEmcU6wMazTy158smzEuQT/5q
         cridVkavGExDKZ7jL9BRU/Kr0G7y8b82TDiSmuNQtsIRjZ5HYhRCsDKG/rO4FXP86tLf
         e+cZNvhZw/JWoteNmf7lgSWimx+9m6kl8U78ZydH6L82r2R38FCaIvOK8cypZjQECXy0
         2dMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FQ5Boa7a9PeWYmf1avgmu2/hHAjuzdOTQW9yTF9bIBc=;
        b=T/jJMJrW2zD6aZ0kBzMEL2Fw7mXPg3KDxQjjgZ2wlqZuI68jd7cIGocbxAZsFcQboj
         tLPeS1qd7S/bbOFzr2gUuovlvn2kVXohWuOAB4cOm9yk6A6oWRuyF4nnj9DWwXcEogaX
         kccebK5E1+GSeoAdks6GZcFP2fWY9Z7lYYz+dv9wRQtaRhR8SyogdaeJ5m+HZ2mpm+x3
         ffGjDHCGPYo7HB87t8J23yzyf1PZkmzwaGLQFrWjYg5PzNO8baI6oaNqmSufr0HfuVUo
         x8VY8aWFur7wyWc939cYznClKHaPNkEAiSHmbxykoUN7EGy/sa6ZJLeQ8E1aeSChGVwW
         tl+w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pmq67IebpdsLw3R3bWaLFIdU3xs2BTtHmLQYj+ojC+/v64i2EKF
	DUe/pQpy+o0T8yy+77pEG2U=
X-Google-Smtp-Source: AA0mqf45hQbU/2TzWgrG5xrlrmCs+2+qU9EBcaUTUcOx605s7o4IcBzw90V2FGDpyXIJIraxGifkQA==
X-Received: by 2002:a62:b501:0:b0:573:1959:c356 with SMTP id y1-20020a62b501000000b005731959c356mr79347484pfe.51.1670922189079;
        Tue, 13 Dec 2022 01:03:09 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:8a94:b0:218:a5af:5c43 with SMTP id
 x20-20020a17090a8a9400b00218a5af5c43ls19909107pjn.3.-pod-control-gmail; Tue,
 13 Dec 2022 01:03:07 -0800 (PST)
X-Received: by 2002:a17:903:40c3:b0:18d:61f6:e254 with SMTP id t3-20020a17090340c300b0018d61f6e254mr16602942pld.33.1670922187015;
        Tue, 13 Dec 2022 01:03:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670922187; cv=none;
        d=google.com; s=arc-20160816;
        b=iDIYL82+5TK7jqtdSrtCyUSb2/B5BiRF4JN3FZbwbxiARefRZPi/anydpxC4sNmhm8
         5jq84RnCRcyJBJt24ZxuYPKm/8cVowl9yXFqvlJ74PONjINGjRn0PaaCHdNEjtEaTLD2
         KK4+EMK4f4qJx/VhD49wSvmlV4gGak6DHzuhYBUDLgn2PHqaon9LaLC13eaZZ6I6CzMJ
         ZC56/7ual9n8H+NVW8OYcDPultCHhCHmCp0qQVNINcODqAP3OHAESiI5pVV6tOjKcTe0
         Di0W8+WBibtgpEx7cUINsBqz+w27CtOZsRG6hYnMLic6n/2/wmtuuQyOgMPx4P10d38i
         KFEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=mAldmoIDqR8Nc1A7PLGexmXIlPuNsXkpxtPM6ZMs7DY=;
        b=hPWiR06xitntgwoIz+drCwFUhbPQSf2dw3dx+i5CYehPruB3ZBwW8PFLwGv7OtAD40
         Er9qpmECIiG/zhDqPV9p9NfCl+PgeILimNl2UVlAJhgC3d74O3RqM8FVGkOeoQ4B9EMy
         2+G+ytr+5pVFZyPZV0pENdOkqFAKf0NoVXQwF9/NQGwpgndrOQiMsos1HtSkNI/ZB/4z
         qpMOZY64VDOoSY0V7cfCY1pX/9/hve8WD91Nir7sjRhH4yZihE3ZYolmyNEd5Yk7t2D5
         Oaz+rNd4TN1HmTJOuVrGSxlhFk32L1Yo9O0+9Sqqk+FKvlXagoUZRqRc/xVPjoPCtw66
         tXGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 45.195.24.23 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Received: from mail-m2423.xmail.netease.com (mail-m2423.xmail.netease.com. [45.195.24.23])
        by gmr-mx.google.com with ESMTPS id u3-20020a17090341c300b0018734e1a0dcsi783988ple.0.2022.12.13.01.03.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Dec 2022 01:03:06 -0800 (PST)
Received-SPF: pass (google.com: domain of dinghui@sangfor.com.cn designates 45.195.24.23 as permitted sender) client-ip=45.195.24.23;
Received: from [0.0.0.0] (unknown [172.96.223.238])
	by mail-m12746.qiye.163.com (Hmail) with ESMTPA id AF687BC03F5;
	Tue, 13 Dec 2022 17:02:58 +0800 (CST)
Message-ID: <e61b69d9-390c-d38d-8df1-5804e5f1ba9d@sangfor.com.cn>
Date: Tue, 13 Dec 2022 17:03:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] scsi: iscsi_tcp: Fix UAF when access shost attr during
 session logout
Content-Language: en-US
To: Mike Christie <michael.christie@oracle.com>,
 Wenchao Hao <haowenchao22@gmail.com>
Cc: lduncan@suse.com, cleech@redhat.com, jejb@linux.ibm.com,
 martin.petersen@oracle.com, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221209082247.6330-1-dinghui@sangfor.com.cn>
 <ae9ee90e-e890-e054-6cf9-8acadd6012b9@oracle.com>
 <CAOptpSO-TMhqR35RW4Sssm29NA=8rJ6-9TgjTVpGKpYOeS_8sA@mail.gmail.com>
 <a60661e9-0ea5-1087-4fbe-27a11cf7edf0@oracle.com>
From: Ding Hui <dinghui@sangfor.com.cn>
In-Reply-To: <a60661e9-0ea5-1087-4fbe-27a11cf7edf0@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDH01JVkhDQkxMHxhDTEsaHVUTARMWGhIXJBQOD1
	lXWRgSC1lBWUpMSVVCTVVJSUhVSUhDWVdZFhoPEhUdFFlBWU9LSFVKSktPSEhVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OlE6TQw*AT0oAk1JCS0YKwk1
	QhFPCyJVSlVKTUxLQklJSkNIQ0lKVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
	QVlKTElVQk1VSUlIVUlIQ1lXWQgBWUFDTUNLNwY+
X-HM-Tid: 0a850ab92039b219kuuuaf687bc03f5
X-Original-Sender: dinghui@sangfor.com.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dinghui@sangfor.com.cn designates 45.195.24.23 as
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

On 2022/12/13 1:00, Mike Christie wrote:
> On 12/11/22 8:32 AM, Wenchao Hao wrote:
>> On Sun, Dec 11, 2022 at 6:07 AM Mike Christie
>> <michael.christie@oracle.com> wrote:
>>>
>>> On 12/9/22 2:22 AM, Ding Hui wrote:
>>>> During iscsi session logout, if another task accessing shost ipaddress
>>>> attr at this time, we can get a KASAN UAF report like this:
>>>>
>>>> [  276.941685] ==================================================================
>>>> [  276.942144] BUG: KASAN: use-after-free in _raw_spin_lock_bh+0x78/0xe0
>>>> [  276.942535] Write of size 4 at addr ffff8881053b45b8 by task cat/4088
>>>> [  276.943511] CPU: 2 PID: 4088 Comm: cat Tainted: G            E      6.1.0-rc8+ #3
>>>> [  276.943997] Hardware name: VMware, Inc. VMware Virtual Platform/440BX Desktop Reference Platform, BIOS 6.00 11/12/2020
>>>> [  276.944470] Call Trace:
>>>> [  276.944943]  <TASK>
>>>> [  276.945397]  dump_stack_lvl+0x34/0x48
>>>> [  276.945887]  print_address_description.constprop.0+0x86/0x1e7
>>>> [  276.946421]  print_report+0x36/0x4f
>>>> [  276.947358]  kasan_report+0xad/0x130
>>>> [  276.948234]  kasan_check_range+0x35/0x1c0
>>>> [  276.948674]  _raw_spin_lock_bh+0x78/0xe0
>>>> [  276.949989]  iscsi_sw_tcp_host_get_param+0xad/0x2e0 [iscsi_tcp]
>>>> [  276.951765]  show_host_param_ISCSI_HOST_PARAM_IPADDRESS+0xe9/0x130 [scsi_transport_iscsi]
>>>> [  276.952185]  dev_attr_show+0x3f/0x80
>>>> [  276.953005]  sysfs_kf_seq_show+0x1fb/0x3e0
>>>> [  276.953401]  seq_read_iter+0x402/0x1020
>>>> [  276.954260]  vfs_read+0x532/0x7b0
>>>> [  276.955113]  ksys_read+0xed/0x1c0
>>>> [  276.955952]  do_syscall_64+0x38/0x90
>>>> [  276.956347]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>>>> [  276.956769] RIP: 0033:0x7f5d3a679222
>>>> [  276.957161] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 32 c0 0b 00 e8 a5 fe 01 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f 05 <48> 3d 00 f0 ff ff 77 56 c3 0f 1f 44 00 00 48 83 ec 28 48 89 54 24
>>>> [  276.958009] RSP: 002b:00007ffc864d16a8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
>>>> [  276.958431] RAX: ffffffffffffffda RBX: 0000000000020000 RCX: 00007f5d3a679222
>>>> [  276.958857] RDX: 0000000000020000 RSI: 00007f5d3a4fe000 RDI: 0000000000000003
>>>> [  276.959281] RBP: 00007f5d3a4fe000 R08: 00000000ffffffff R09: 0000000000000000
>>>> [  276.959682] R10: 0000000000000022 R11: 0000000000000246 R12: 0000000000020000
>>>> [  276.960126] R13: 0000000000000003 R14: 0000000000000000 R15: 0000557a26dada58
>>>> [  276.960536]  </TASK>
>>>> [  276.961357] Allocated by task 2209:
>>>> [  276.961756]  kasan_save_stack+0x1e/0x40
>>>> [  276.962170]  kasan_set_track+0x21/0x30
>>>> [  276.962557]  __kasan_kmalloc+0x7e/0x90
>>>> [  276.962923]  __kmalloc+0x5b/0x140
>>>> [  276.963308]  iscsi_alloc_session+0x28/0x840 [scsi_transport_iscsi]
>>>> [  276.963712]  iscsi_session_setup+0xda/0xba0 [libiscsi]
>>>> [  276.964078]  iscsi_sw_tcp_session_create+0x1fd/0x330 [iscsi_tcp]
>>>> [  276.964431]  iscsi_if_create_session.isra.0+0x50/0x260 [scsi_transport_iscsi]
>>>> [  276.964793]  iscsi_if_recv_msg+0xc5a/0x2660 [scsi_transport_iscsi]
>>>> [  276.965153]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
>>>> [  276.965546]  netlink_unicast+0x4d5/0x7b0
>>>> [  276.965905]  netlink_sendmsg+0x78d/0xc30
>>>> [  276.966236]  sock_sendmsg+0xe5/0x120
>>>> [  276.966576]  ____sys_sendmsg+0x5fe/0x860
>>>> [  276.966923]  ___sys_sendmsg+0xe0/0x170
>>>> [  276.967300]  __sys_sendmsg+0xc8/0x170
>>>> [  276.967666]  do_syscall_64+0x38/0x90
>>>> [  276.968028]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>>>> [  276.968773] Freed by task 2209:
>>>> [  276.969111]  kasan_save_stack+0x1e/0x40
>>>> [  276.969449]  kasan_set_track+0x21/0x30
>>>> [  276.969789]  kasan_save_free_info+0x2a/0x50
>>>> [  276.970146]  __kasan_slab_free+0x106/0x190
>>>> [  276.970470]  __kmem_cache_free+0x133/0x270
>>>> [  276.970816]  device_release+0x98/0x210
>>>> [  276.971145]  kobject_cleanup+0x101/0x360
>>>> [  276.971462]  iscsi_session_teardown+0x3fb/0x530 [libiscsi]
>>>> [  276.971775]  iscsi_sw_tcp_session_destroy+0xd8/0x130 [iscsi_tcp]
>>>> [  276.972143]  iscsi_if_recv_msg+0x1bf1/0x2660 [scsi_transport_iscsi]
>>>> [  276.972485]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
>>>> [  276.972808]  netlink_unicast+0x4d5/0x7b0
>>>> [  276.973201]  netlink_sendmsg+0x78d/0xc30
>>>> [  276.973544]  sock_sendmsg+0xe5/0x120
>>>> [  276.973864]  ____sys_sendmsg+0x5fe/0x860
>>>> [  276.974248]  ___sys_sendmsg+0xe0/0x170
>>>> [  276.974583]  __sys_sendmsg+0xc8/0x170
>>>> [  276.974891]  do_syscall_64+0x38/0x90
>>>> [  276.975216]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>>>>
>>>> We can easily reproduce by two tasks:
>>>> 1. while :; do iscsiadm -m node --login; iscsiadm -m node --logout; done
>>>> 2. while :; do cat /sys/devices/platform/host*/iscsi_host/host*/ipaddress; done
>>>>
>>>>              iscsid                |        cat
>>>> ----------------------------------+-------------------------------------------------
>>>> |- iscsi_sw_tcp_session_destroy   |
>>>>    |- iscsi_session_teardown       |
>>>>      |- device_release             |
>>>>        |- iscsi_session_release    |  |- dev_attr_show
>>>>          |- kfree                  |    |- show_host_param_ISCSI_HOST_PARAM_IPADDRESS
>>>>                                    |      |- iscsi_sw_tcp_host_get_param
>>>>                                    |        |- r/w tcp_sw_host->session (UAF)
>>>>    |- iscsi_host_remove            |
>>>>    |- iscsi_host_free              |
>>>>
>>>> Since shost hold a pointer to session which is belong to cls_session by its
>>>> priv tcp_sw_host, so we should get a ref of cls_session, and after
>>>> iscsi_host_remove() the sysfs is cleared, then we can drop the ref.
>>>>
>>>
>>> Nice bug report and thanks for the patch. I think though we should just
>>> split the removal from the freeing. The removal will wait on users
>>> accessing sysfs files for us, so once they return we know we can just
>>> free things.
>>>
>>> Something like this:
>>>
>>>
>>
>> Hi, dinghui and Mike, I submitted patches to fix this issue one year
>> ago. But I missed Mike's
>> reply because I was new to the community, so the patches did not keep on.
>>
>> https://lore.kernel.org/linux-scsi/20210407012450.97754-1-haowenchao@huawei.com/
>>
>> Because of my negligence, this bug has been discovered so far, and I
>> apologize for this.
> 
> Ah yeah, I remember that now. Don't worry about it. It was also my fault
> for not pinging you.
> 
> I'll fix up my patches into a proper patchset and submit.
> 

Hi Wenchao and Mike,

Thanks for your work, I am looking forward to it.

-- 
Thanks,
- Ding Hui

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e61b69d9-390c-d38d-8df1-5804e5f1ba9d%40sangfor.com.cn.
