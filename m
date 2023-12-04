Return-Path: <open-iscsi+bncBDQ2FCEAWYLRBT5KXCVQMGQEXI76CNY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7A0803C48
	for <lists+open-iscsi@lfdr.de>; Mon,  4 Dec 2023 19:07:14 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id 3f1490d57ef6-db410931c23sf3348450276.2
        for <lists+open-iscsi@lfdr.de>; Mon, 04 Dec 2023 10:07:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701713233; cv=pass;
        d=google.com; s=arc-20160816;
        b=S/f45AVN+UxHVkBzs7s3ZuzEemZoLNeWKM1v2WJrnAYlevqYa/MHJHa4N78zJZ8vWA
         usvILmHK3YSnTrwCGeO0dFAPPlPivp9E40EZGiJJARrtZJIJDvwq3px3MIW1z5eiSul3
         zk7a1xHkaB/iMgKfwiYXqvXv0DkeM4rBvQkwLNj+mJgbXKFyt+vmU+HqXSt9Fq/iei46
         wKjEu3kwai8UY5rgJ3tfvj9DODdS5kBRV3NdcEkOfhRbVBrl41+T7w7e3a4O5D0zM+uW
         ATtv+wNW9Nzr96iORSFHI6RI6fJ0/y3Wjl0TIZ0sCGzfUY3+LOSYoz4JEIU7S2xWZNFt
         RCFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=RbH27cepfyR8G36erZ5Y50b4Z3oqkNmiSs9nL3cHQKw=;
        fh=V4hDMxxFcU57KXCwYC5dQsYvr7pjJlwQZhaZyl0GgrI=;
        b=kpGlZ5xIll4QAj7brqIdaiG5J2BfhRuFswryEinAv2T+Phn2kKVk1IoCWDPTdyTbCL
         FD8JW9rUWYLpE/r4X5siSehyoINESH7oHItPa9eRkOl1cmvdb4qRaO1I5tcx90vafQP1
         eu2KXtOZlYE06vjZALjeKDRJpOLXTPtMzcDynaZZxWGDWXNVMxV76itm8Edn3GU4c6FK
         6GcW4Lw/RVjjLuwjSud61dBVNBmxT2SbkgsTc2rk9UOhwWw/oDqWzMIx98iCSjkcY9ls
         j/rr9x84nwuGjE1cO0vqKOmxGL2STkTTVe1MfFsyHjT7DCuTQnyCR0mVaOq8ea+uue+W
         UwYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=AWRZ2kvk;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701713233; x=1702318033; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=RbH27cepfyR8G36erZ5Y50b4Z3oqkNmiSs9nL3cHQKw=;
        b=W3ltArSMg1ezJ5yC06Y57nBjsq3o/5BXXz5M/Yvw1PTl4vVz21r9a9iOsTOxeAemM1
         m071Ysf+GCLHXnKmOPyN4M7L1Ed3cG5IpTe+/RPbKufY1h2+YUsZjBDKSwaTJyAs8LNS
         xgsnGmz/l/TsRle0Qq4lTQ5sIUIl0w4QTuApdz4sJKN9PqIQhrQa3ORYgujacvR3uByw
         g6CXULycQP32fn8YvXtwJjVK6pGEJ9r1J76pMr6g1kGnk9V6aGTv+JbxCgLI9RE77ueQ
         7UwulLRsh1VnQqxcF7TFVW8UUgDJYL4r/GiA9v4ex+NDmphG+ZaP71beGLn0jC6AxoaV
         SFFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701713233; x=1702318033;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RbH27cepfyR8G36erZ5Y50b4Z3oqkNmiSs9nL3cHQKw=;
        b=kf0QgzuVrnqXWZs9AVOOznRj3E9JueskVKAoQkNMQDPY4X5GBUch2CEYoZC1ezLfi+
         v5P8fD5lQ+w96MLrsUYxAmWBy6efsTG++YEkHkXLGPJWK1DK8J05p9y931PGx6pS6lU9
         TaYAX3jrIjmtkSfnPBNPB7aJaqK0fl5ZfWDc7FtEwfUgI0IsytgF0S6yVDjOpHcOsVCf
         mHMXlL6dvMD7MforXRPDidlSXP2uW+httdAaRRZ6X6yQ4x3zDWqiU/dglrO4fpg7UDWC
         MExrhEuLq71DejLOTYA/Mm0VHflIMFM0hLZpAC9gPxraMOfezXshHqwgGROR77bd6mZL
         vwoA==
X-Gm-Message-State: AOJu0YwXU5d8zCZ7YSRFDnIdjp19gOQjrzh0KYhm4KJCUwSmw59Hax0P
	x6jLrNKNoSLI0+4GgAIS7XY=
X-Google-Smtp-Source: AGHT+IGe1eQDAE8JhCVxFlAklWKErhPgpP03sQKRkdoA9hT8R8QSOoubCbdVo1yz33am+aEp74Dv7w==
X-Received: by 2002:a25:adcf:0:b0:db5:3fd7:ec0a with SMTP id d15-20020a25adcf000000b00db53fd7ec0amr3228593ybe.57.1701713233156;
        Mon, 04 Dec 2023 10:07:13 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:7dc2:0:b0:d86:19d2:c0f1 with SMTP id y185-20020a257dc2000000b00d8619d2c0f1ls456931ybc.0.-pod-prod-05-us;
 Mon, 04 Dec 2023 10:07:10 -0800 (PST)
X-Received: by 2002:a81:b65c:0:b0:5d7:1940:dd68 with SMTP id h28-20020a81b65c000000b005d71940dd68mr3164840ywk.62.1701713230572;
        Mon, 04 Dec 2023 10:07:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701713230; cv=none;
        d=google.com; s=arc-20160816;
        b=NslGm3Zygp5at7ea5obCC2SzFtUeSxKAGZtdHtqIw9OoiukWc0ChM3n77z2PyTRX7e
         HlTo2EkmHPhi9mOdCHHB8gjOKs7jVX+0aeb6P0sa66+orsLnAzid/s7SM3PUuFUTdexX
         fqPqqTdpYrWfv32zyLxn2rD2Zkjdicu4cc1EnO5G9zOanxu3l9y9JTGDU4wC89ZrbeOH
         2I0iJloOCaBHtBdiSjB6sHHxua8q3FTCiGJvcPnfcMz9C9GneGMTDqmoYXFl34EobV1O
         Z31W3vOYm+B7ZvrdVtzj4G4obMCaLuf1pByIm7Z5bdGPxdeVquxVxYMBitMyxAHHjqG7
         JwYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=vnKGL9rVmaXJ0k7UQTGGb8qgGBw3yaFYXulmlj0ClVk=;
        fh=V4hDMxxFcU57KXCwYC5dQsYvr7pjJlwQZhaZyl0GgrI=;
        b=VO6lUeF2HF3tn83PRZ99JfxvS4DCda64oSehbsfgpCCHzLMYI0EBtzLWZ4VOqGaAlc
         i3hmz86u1aDI+C5eDZHy9bQ2lJl1wWNQ0FXV2LNwmo+DimsUjnfjcT30AhQYRNOsZYWo
         HiNI7FSH2ZdvwS4IJzQloirXBtm0cFLzODvk2spLpo2k0LDQFKm9BBb+zysoCQZGtenB
         Df10HHIhIOIwICTLgZvtYpmmc+r4vAV2C3OtOQXU755HITTPnUiejQG3I6nbs5GrT3EG
         VgpYLniQWEg+ztmPLhMFIAVLxFmD0shGjTYafkgSrEgJyqpFNasNxXKEjG7miyvWysy9
         HzBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=AWRZ2kvk;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id u13-20020a81b60d000000b005ccd9a64bc7si1184190ywh.1.2023.12.04.10.07.10
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 10:07:10 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-6cbe716b511so3612844b3a.3
        for <open-iscsi@googlegroups.com>; Mon, 04 Dec 2023 10:07:10 -0800 (PST)
X-Received: by 2002:a05:6a20:1448:b0:18c:374c:6e64 with SMTP id a8-20020a056a20144800b0018c374c6e64mr27716780pzi.36.1701713229690;
        Mon, 04 Dec 2023 10:07:09 -0800 (PST)
Received: from localhost ([2620:10d:c090:400::4:27ef])
        by smtp.gmail.com with ESMTPSA id u2-20020a056a00158200b006cdd507ca2esm7943470pfk.167.2023.12.04.10.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 10:07:09 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Mon, 4 Dec 2023 08:07:07 -1000
From: Tejun Heo <tj@kernel.org>
To: Naohiro Aota <Naohiro.Aota@wdc.com>
Cc: Lai Jiangshan <jiangshanlai@gmail.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>,
	"ceph-devel@vger.kernel.org" <ceph-devel@vger.kernel.org>,
	"cgroups@vger.kernel.org" <cgroups@vger.kernel.org>,
	"coreteam@netfilter.org" <coreteam@netfilter.org>,
	"dm-devel@lists.linux.dev" <dm-devel@lists.linux.dev>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"gfs2@lists.linux.dev" <gfs2@lists.linux.dev>,
	"intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
	"iommu@lists.linux.dev" <iommu@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-bcachefs@vger.kernel.org" <linux-bcachefs@vger.kernel.org>,
	"linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
	"linux-cachefs@redhat.com" <linux-cachefs@redhat.com>,
	"linux-cifs@vger.kernel.org" <linux-cifs@vger.kernel.org>,
	"linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
	"linux-erofs@lists.ozlabs.org" <linux-erofs@lists.ozlabs.org>,
	"linux-f2fs-devel@lists.sourceforge.net" <linux-f2fs-devel@lists.sourceforge.net>,
	"linux-fscrypt@vger.kernel.org" <linux-fscrypt@vger.kernel.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-mm@kvack.org" <linux-mm@kvack.org>,
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
	"linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
	"linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
	"linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
	"linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
	"linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"linux-trace-kernel@vger.kernel.org" <linux-trace-kernel@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
	"linux-xfs@vger.kernel.org" <linux-xfs@vger.kernel.org>,
	"nbd@other.debian.org" <nbd@other.debian.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"ntb@lists.linux.dev" <ntb@lists.linux.dev>,
	"open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"oss-drivers@corigine.com" <oss-drivers@corigine.com>,
	"platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
	"samba-technical@lists.samba.org" <samba-technical@lists.samba.org>,
	"target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
	"virtualization@lists.linux.dev" <virtualization@lists.linux.dev>,
	"wireguard@lists.zx2c4.com" <wireguard@lists.zx2c4.com>
Subject: Re: Performance drop due to alloc_workqueue() misuse and recent
 change
Message-ID: <ZW4VS3Z0auYCjg-W@slm.duckdns.org>
References: <dbu6wiwu3sdhmhikb2w6lns7b27gbobfavhjj57kwi2quafgwl@htjcc5oikcr3>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <dbu6wiwu3sdhmhikb2w6lns7b27gbobfavhjj57kwi2quafgwl@htjcc5oikcr3>
X-Original-Sender: tj@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=AWRZ2kvk;       spf=pass
 (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::431 as
 permitted sender) smtp.mailfrom=htejun@gmail.com;       dmarc=fail (p=NONE
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
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Hello,

On Mon, Dec 04, 2023 at 04:03:47PM +0000, Naohiro Aota wrote:
> Recently, commit 636b927eba5b ("workqueue: Make unbound workqueues to use
> per-cpu pool_workqueues") changed WQ_UNBOUND workqueue's behavior. It
> changed the meaning of alloc_workqueue()'s max_active from an upper limit
> imposed per NUMA node to a limit per CPU. As a result, massive number of
> workers can be running at the same time, especially if the workqueue user
> thinks the max_active is a global limit.
> 
> Actually, it is already written it is per-CPU limit in the documentation
> before the commit. However, several callers seem to misuse max_active,
> maybe thinking it is a global limit. It is an unexpected behavior change
> for them.

Right, and the behavior has been like that for a very long time and there
was no other way to achieve reasonable level of concurrency, so the current
situation is expected.

> For example, these callers set max_active = num_online_cpus(), which is a
> suspicious limit applying to per-CPU. This config means we can have nr_cpu
> * nr_cpu active tasks working at the same time.

Yeah, that sounds like a good indicator.

> fs/f2fs/data.c: sbi->post_read_wq = alloc_workqueue("f2fs_post_read_wq",
> fs/f2fs/data.c-                                          WQ_UNBOUND | WQ_HIGHPRI,
> fs/f2fs/data.c-                                          num_online_cpus());
> 
> fs/crypto/crypto.c:     fscrypt_read_workqueue = alloc_workqueue("fscrypt_read_queue",
> fs/crypto/crypto.c-                                              WQ_UNBOUND | WQ_HIGHPRI,
> fs/crypto/crypto.c-                                              num_online_cpus());
> 
> fs/verity/verify.c:     fsverity_read_workqueue = alloc_workqueue("fsverity_read_queue",
> fs/verity/verify.c-                                               WQ_HIGHPRI,
> fs/verity/verify.c-                                               num_online_cpus());
> 
> drivers/crypto/hisilicon/qm.c:  qm->wq = alloc_workqueue("%s", WQ_HIGHPRI | WQ_MEM_RECLAIM |
> drivers/crypto/hisilicon/qm.c-                           WQ_UNBOUND, num_online_cpus(),
> drivers/crypto/hisilicon/qm.c-                           pci_name(qm->pdev));
> 
> block/blk-crypto-fallback.c:    blk_crypto_wq = alloc_workqueue("blk_crypto_wq",
> block/blk-crypto-fallback.c-                                    WQ_UNBOUND | WQ_HIGHPRI |
> block/blk-crypto-fallback.c-                                    WQ_MEM_RECLAIM, num_online_cpus());
> 
> drivers/md/dm-crypt.c:          cc->crypt_queue = alloc_workqueue("kcryptd/%s",
> drivers/md/dm-crypt.c-                                            WQ_CPU_INTENSIVE | WQ_MEM_RECLAIM | WQ_UNBOUND,
> drivers/md/dm-crypt.c-                                            num_online_cpus(), devname);

Most of these work items are CPU bound but not completley so. e.g.
kcrypt_crypt_write_continue() does wait_for_completion(), so setting
max_active to 1 likely isn't what they want either. They mostly want some
reasonable system-wide concurrency limit w.r.t. the CPU count while keeping
some level of flexibility in terms of task placement.

The previous max_active wasn't great for this because its meaning changed
depending on the number of nodes. Now, the meaning doesn't change but it's
not really useful for the above purpose. It's only useful for avoiding
melting the system completely.

One way to go about it is to declare that concurrency level management for
unbound workqueue is on users but that seems not ideal given many use cases
would want it anyway.

Let me think it over but I think the right way to go about it is going the
other direction - ie. making max_active apply to the whole system regardless
of the number of nodes / ccx's / whatever.

> Furthermore, the change affects performance in a certain case.
> 
> Btrfs creates several WQ_UNBOUND workqueues with a default max_active =
> min(NRCPUS + 2, 8). As my machine has 96 CPUs with NUMA disabled, this
> max_active config allows running over 700 active works. Before the commit,
> it is limited to 8 if NUMA is disabled or limited to 16 if NUMA nodes is 2.
> 
> I reverted the workqueue code back to before the commit, and I ran the
> following fio command on RAID0 btrfs on 6 SSDs.
> 
> fio --group_reporting --eta=always --eta-interval=30s --eta-newline=30s \
>     --rw=write --fallocate=none \
>     --direct=1 --ioengine=libaio --iodepth=32 \
>     --filesize=100G \
>     --blocksize=64k \
>     --time_based --runtime=300s \
>     --end_fsync=1 \
>     --directory=${MNT} \
>     --name=writer --numjobs=32
> 
> By changing workqueue's max_active, the result varies.
> 
> - wq max_active=8   (intended limit by btrfs?)
>   WRITE: bw=2495MiB/s (2616MB/s), 2495MiB/s-2495MiB/s (2616MB/s-2616MB/s), io=753GiB (808GB), run=308953-308953msec
> - wq max_active=16  (actual limit on 2 NUMA nodes setup)
>   WRITE: bw=1736MiB/s (1820MB/s), 1736MiB/s-1736MiB/s (1820MB/s-1820MB/s), io=670GiB (720GB), run=395532-395532msec
> - wq max_active=768 (simulating current limit)
>   WRITE: bw=1276MiB/s (1338MB/s), 1276MiB/s-1276MiB/s (1338MB/s-1338MB/s), io=375GiB (403GB), run=300984-300984msec
> 
> The current performance is slower than the previous limit (max_active=16)
> by 27%, or it is 50% slower than the intended limit.  The performance drop
> might be due to contention of the btrfs-endio-write works. There are over
> 700 kworker instances were created and 100 works are on the 'D' state
> competing for a lock.
> 
> More specifically, I tested the same workload on the commit.
> 
> - At commit 636b927eba5b ("workqueue: Make unbound workqueues to use per-cpu pool_workqueues")
>   WRITE: bw=1191MiB/s (1249MB/s), 1191MiB/s-1191MiB/s (1249MB/s-1249MB/s), io=350GiB (376GB), run=300714-300714msec
> - At the previous commit = 4cbfd3de73 ("workqueue: Call wq_update_unbound_numa() on all CPUs in NUMA node on CPU hotplug")
>   WRITE: bw=1747MiB/s (1832MB/s), 1747MiB/s-1747MiB/s (1832MB/s-1832MB/s), io=748GiB (803GB), run=438134-438134msec
> 
> So, it is -31.8% performance down with the commit.
> 
> In summary, we misuse max_active, considering it is a global limit. And,
> the recent commit introduced a huge performance drop in some cases.  We
> need to review alloc_workqueue() usage to check if its max_active setting
> is proper or not.

Thanks a lot for the report. I think it's a lot more reasonable to assume
that max_active is global for unbound workqueues. The current workqueue
behavior is not very intuitive or useful. I'll try to find something more
reasonable. Thanks for the report and analysis. Much appreciated.

Thanks.

-- 
tejun

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ZW4VS3Z0auYCjg-W%40slm.duckdns.org.
