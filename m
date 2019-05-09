Return-Path: <open-iscsi+bncBC755V5RXMKBBZ742DTAKGQEI7ZFBJA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC2418C52
	for <lists+open-iscsi@lfdr.de>; Thu,  9 May 2019 16:51:20 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id s32sf2843384qts.8
        for <lists+open-iscsi@lfdr.de>; Thu, 09 May 2019 07:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2P+WmMehbTC0SAEB3sEzEoob66aWGd78o1nPF22Q6X8=;
        b=GeFYkwtTH4GAo5Ovv9QP8g02S4xCgCLp4YQK9bd75dd35/reipgpnmzdbqpI1mXpar
         wNesjxuymobIeh0UfWhtWtQOrr19yK79DL9P3/uHx0pZb/3sOX20/HpkabEurWh6EtjQ
         dItx09xA3M2MQWyiDG07W1N20gn/hTD4a5CMnASYBJX+TWBpk44xgjKlaveJRhvuYFfM
         hGXb81uZRx0XS88Xd39kqrIWUqpwosJJMQxQs3oeTbPZN4nWqRaxLaegQJbLhcS+muVE
         ialxKxKzKFdLqIzF4+JFHZut0YMul9ZlF1hG4e32GAyT26zS5DRSj9+pc/9Uwl3XolDH
         VexQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2P+WmMehbTC0SAEB3sEzEoob66aWGd78o1nPF22Q6X8=;
        b=tWEuRsZKONVnyWEETTKFkX1dm9w4n7ZB+K0k17NxrELRTT+GLa4jizm4hBuIlZ2uXb
         XA72fCJqhU2OeaFgT3po9JuPMT9hbhqLHhkSD7hJHHBoo/WSJ+UtArz8y5DzA067D3MZ
         KOuN/TRCs0SBjF2xGD5/syX0FvMStrhfJqv8m+n2Mgr75CwNWWSNBx/nOUPOz7iyo5S2
         Va4nYAIvTQS3FXl7qa6SLvhDvgrXnlk8NnLapIBu4eQTbAQ+HLXmEy2mPypLecUw4/7i
         LjoCE8q41hhxgTAcjllZflbJqI+ZczHS/1n4m7vLG95NVWzU7JR7Z1pDfk6l1rMnOM7K
         mTSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2P+WmMehbTC0SAEB3sEzEoob66aWGd78o1nPF22Q6X8=;
        b=dVGCwS27yyfkxkOVC/r+Ie9dY68HHMhE9KAg0SPAAG5BGoACH2+D2sLrk77Ub7RKjO
         KwONwgPrWEgN4HxhyYhBwwEourFFrnS0HM6mLkJINBaZ8zEYnJbmBw/sCmYdXTA84eKu
         zkNkTtFml1b1zyz6aBOB+CLAEYH7/2H4GNe4gsuNvNn37/4KfqIcP8veXlcAAaVFJV6e
         t9PFP3gqrTC08SLvueR6/Ez0sWD6K2ZYlPOAsaYGQHOnkzCp4cg9umKqq7qxNDPTCsHw
         3h9pJKdcPeBGihpUVSIkmG/Gaoc8S13UOL/098U5Hu+RIEn1FothJcJG3Gzrzay+EDwo
         alTg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXDb3+dKn3eehVN9P7ZM6BMltYHBlt4Pk43v7gxt2vsQ6ZSfWjQ
	sJ4VmCyMz6ySe3UAs9o2Teo=
X-Google-Smtp-Source: APXvYqwixXfoHlb/EXEFdb43nosrXCN0+wDD/21mWYYE308Ydz5C7mALfOHmzehpk9WC3RoW7415qQ==
X-Received: by 2002:aed:2189:: with SMTP id l9mr3987468qtc.83.1557413479821;
        Thu, 09 May 2019 07:51:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:23ce:: with SMTP id r14ls784559qtr.8.gmail; Thu, 09 May
 2019 07:51:19 -0700 (PDT)
X-Received: by 2002:ac8:188c:: with SMTP id s12mr4126558qtj.9.1557413479173;
        Thu, 09 May 2019 07:51:19 -0700 (PDT)
Date: Thu, 9 May 2019 07:51:17 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <68eeea59-fbe9-413d-bf24-e3523b69d75f@googlegroups.com>
In-Reply-To: <CAJX3CtgZw7Tcz5mzzmy2QuULJTp+2LP4W_oYjwnHiJH26YSJHg@mail.gmail.com>
References: <CAJX3CtjkBYRa21OetDfCZ0W5UZyjzCwBw8C9ZnBKnDOcrKJP3A@mail.gmail.com>
 <b3b72ebf-3402-1dfc-5dd6-fbaca65171ed@interlog.com>
 <CAJX3CtgZw7Tcz5mzzmy2QuULJTp+2LP4W_oYjwnHiJH26YSJHg@mail.gmail.com>
Subject: Re: [bug report][scsi blk_mq] data corruption due to a bug in SCSI
 LLD error handling
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_402_83696776.1557413478095"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_402_83696776.1557413478095
Content-Type: multipart/alternative; 
	boundary="----=_Part_403_76207669.1557413478096"

------=_Part_403_76207669.1557413478096
Content-Type: text/plain; charset="UTF-8"

I think the point is that the sg path is not equal to the real IO path. You 
are (currently) never going to get correct error handling from the sg path, 
which is considered out of band.

So what are you trying to do here? Are you really developing software that 
uses the sg path, and you need this to work, or are you testing the error 
handling and decided to use sg? In other words, is this a real bug, or just 
something you think should work but does not?

On Tuesday, April 9, 2019 at 5:36:42 PM UTC-4, Jaesoo Lee wrote:
>
> Hi, 
>
> Thanks for the comments. 
>
> I tried to run sg_write_same over sg device and I am seeing the same 
> problem. 
>
> The result is as follows: 
>
> 0. Kernel configs 
> Version: 5.1-rc1 
> Boot parameter: dm_mod.use_blk_mq=Y scsi_mod.use_blk_mq=Y 
>
> 1. Normal state 
> : (As expected) The command succeeded 
>
> $ sg_write_same --lba=100 --xferlen=512 /dev/sg5 
> $ 
>
> 2. Immediately after bringing down the iSCSI interface at the target 
> : (As expected) Failed with DID_TRANSPORT_DISRUPTED after a few seconds 
>
> $ sg_write_same --lba=100 --xferlen=512 /dev/sg5 
> Write same: transport: Host_status=0x0e [DID_TRANSPORT_DISRUPTED] 
> Driver_status=0x00 [DRIVER_OK, SUGGEST_OK] 
>
> Write same(10) command failed 
>
> 3. Immediately after the DID_TRANSPORT_DISRUPTED error 
> : (BUG) The command succeeded after a few seconds 
>
> $ sg_write_same --lba=100 --xferlen=512 /dev/sg5 
> $ 
>
> : Kernel logs 
> Apr  8 18:28:03 init21-16 kernel: session1: session recovery timed out 
> after 10 secs 
> Apr  8 18:28:03 init21-16 kernel: sd 8:0:0:5: rejecting I/O to offline 
> device 
>
> 4. Issued IO again 
> : (As expected) The command failed 
>
> $ sg_write_same --lba=100 --xferlen=512 /dev/sg5 
> Write same: pass through os error: No such device or address 
> Write same(10) command failed 
>
> Let me upload my fix for this and please give me some comments on that. 
>
> Thanks, 
>
> Jaesoo Lee. 
>
> ---------- Forwarded message --------- 
> From: Douglas Gilbert 
> Date: Wed, Apr 3, 2019 at 2:06 PM 
> Subject: Re: [bug report][scsi blk_mq] data corruption due to a bug in 
> SCSI LLD error handling 
> To: <...>
>
>
> On 2019-04-03 4:18 p.m., Jaesoo Lee wrote: 
> > Hello All, 
> > 
> > I encountered this bug while trying to enable dm_blk_mq for our 
> > iSCSI/FCP targets. 
> > 
> > The bug is that the sg_io issued to scsi_blk_mq would succeed even if 
> > LLD wants to error out those requests. 
> > 
> > Let me explain the scenario in more details. 
> > 
> > Setup: 
> > 0. Host kernel configuration 
> > - 4.19.9, 4.20.16 
> > - boot parameter: dm_mod.use_blk_mq=Y scsi_mod.use_blk_mq=Y 
> > scsi_transport_iscsi.debug_session=1 scsi_transport_iscsi.debug_conn=1 
> > 
> > Scenario: 
> > 1. Connect the host to iSCSI target via four paths 
> > : A dm device is created for those target devices 
> > 2. Start an application in the host which generates sg_io ioctl for 
> > XCOPY and WSAME to the dm device with the ratio of around 50% 
> > (pread/pwrite for the rest). 
> > 3. Perform system crash (sysrq-trigger) in the iSCSI target 
> > 
> > Expected result: 
> > - Any outstanding IOs should get failed with errors 
> > 
> > Actual results: 
> > - Normal read/write IOs get failed as expected 
> > - SG_IO ioctls SUCCEEDED!! 
>
> Not all ioctl(SG_IO)s are created equal! 
>
> If you are using the sg v3 interface (i.e. struct sg_io_hdr) then I would 
> expect DRIVER_TIMEOUT in sg_io_obj.driver_status or DID_TIME_OUT in 
> sg_io_obj.host_status to be set on completion. [BTW You will _not_ see 
> a ETIMEDOUT errno; only errors prior to submission yield errno style 
> errors.] 
>
> If you don't see that with ioctl(SG_IO) on a block device then try again 
> on 
> a sg device. If neither report that then the mid-level error processing 
> is broken. 
>
> Doug Gilbert 
>
>
> > - log message: 
> > [Tue Apr  2 11:26:34 2019]  session3: session recovery timed out after 
> 11 secs 
> > [Tue Apr  2 11:26:34 2019]  session3: session_recovery_timedout: 
> > Unblocking SCSI target 
> > .. 
> > [Tue Apr  2 11:26:34 2019] sd 8:0:0:8: scsi_prep_state_check: 
> > rejecting I/O to offline device 
> > [Tue Apr  2 11:26:34 2019] sd 8:0:0:8: scsi_prep_state_check: 
> > rejecting I/O to offline device 
> > [Tue Apr  2 11:26:34 2019] sd 8:0:0:8: scsi_prep_state_check: 
> > rejecting I/O to offline device 
> > [Tue Apr  2 11:26:34 2019] print_req_error: I/O error, dev sdi, sector 
> 30677580 
> > [Tue Apr  2 11:26:34 2019] device-mapper: multipath: Failing path 8:128. 
> > [Tue Apr  2 11:26:34 2019] SG_IO disk=sdi, result=0x0 
> > 
> > - This causes the DATA corruption for the application 
> > 
> > Relavant call stacks: (SG_IO issue path) 
> > [Tue Apr  2 11:26:33 2019] sd 8:0:0:8: [sdi] sd_ioctl: disk=sdi, 
> cmd=0x2285 
> > [Tue Apr  2 11:26:33 2019] SG_IO disk=sdi, retried 1 cmd 93 
> > [Tue Apr  2 11:26:33 2019] CPU: 30 PID: 16080 Comm: iostress Not 
> > tainted 4.19.9-purekernel_dbg.x86_64+ #30 
> > [Tue Apr  2 11:26:33 2019] Hardware name:  /0JP31P, BIOS 2.0.19 
> 08/29/2013 
> > [Tue Apr  2 11:26:33 2019] Call Trace: 
> > [Tue Apr  2 11:26:33 2019]  dump_stack+0x63/0x85 
> > [Tue Apr  2 11:26:33 2019]  sg_io+0x41e/0x480 
> > [Tue Apr  2 11:26:33 2019]  scsi_cmd_ioctl+0x297/0x420 
> > [Tue Apr  2 11:26:33 2019]  ? sdev_prefix_printk+0xe9/0x120 
> > [Tue Apr  2 11:26:33 2019]  ? _cond_resched+0x1a/0x50 
> > [Tue Apr  2 11:26:33 2019]  scsi_cmd_blk_ioctl+0x51/0x70 
> > [Tue Apr  2 11:26:33 2019]  sd_ioctl+0x95/0x1a0 [sd_mod] 
> > [Tue Apr  2 11:26:33 2019]  __blkdev_driver_ioctl+0x25/0x30 
> > [Tue Apr  2 11:26:33 2019]  dm_blk_ioctl+0x79/0x100 [dm_mod] 
> > [Tue Apr  2 11:26:33 2019]  blkdev_ioctl+0x89a/0x940 
> > [Tue Apr  2 11:26:33 2019]  ? do_nanosleep+0xae/0x180 
> > [Tue Apr  2 11:26:33 2019]  block_ioctl+0x3d/0x50 
> > [Tue Apr  2 11:26:33 2019]  do_vfs_ioctl+0xa6/0x600 
> > [Tue Apr  2 11:26:33 2019]  ? __audit_syscall_entry+0xe9/0x130 
> > [Tue Apr  2 11:26:33 2019]  ksys_ioctl+0x6d/0x80 
> > ).[Tue Apr  2 11:26:33 2019]  __x64_sys_ioctl+0x1a/0x20 
> > [Tue Apr  2 11:26:33 2019]  do_syscall_64+0x60/0x180 
> > [Tue Apr  2 11:26:33 2019]  entry_SYSCALL_64_after_hwframe+0x44/0xa9 
> > 
> > According to the analysis, it seems that there is a bug in propagating 
> > errors for iSCSI session timeout (i.e., session_recovery_timedout). 
> > Compared to this, legacy SCSI queue handles the errors in 
> > scsi_request_fn by killing the request as can be seen below. 
> > 
> > 1872 static void scsi_request_fn(struct request_queue *q) 
> > 1873         __releases(q->queue_lock) 
> > 1874         __acquires(q->queue_lock) 
> > 1875 { 
> > .. 
> > 1886         for (;;) { 
> > .. 
> > 1893                 req = blk_peek_request(q); 
> > 1894                 if (!req) 
> > 1895                         break; 
> > 1896 
> > 1897                 if (unlikely(!scsi_device_online(sdev))) { 
> > 1898                         sdev_printk(KERN_ERR, sdev, 
> > 1899                                     "scsi_request_fn: rejecting 
> > I/O to offline device\n"); 
> > 1900                         scsi_kill_request(req, q); 
> > 1901                         continue; 
> > 1902                 } 
> > 1903 
> > 
> > I am not sure in which layer we have to fix this, LLD or 
> scsi_queue_rq(). 
> > 
> > Could someone please take a look? Or, could someone guide me on how to 
> > fix this bug? 
> > 
> > Thanks, 
> > 
> > Jaesoo Lee. 
> > 
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/68eeea59-fbe9-413d-bf24-e3523b69d75f%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_403_76207669.1557413478096
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think the point is that the sg path is not equal to=
 the real IO path. You are (currently) never going to get correct error han=
dling from the sg path, which is considered out of band.</div><div><br></di=
v><div>So what are you trying to do here? Are you really developing softwar=
e that uses the sg path, and you need this to work, or are you testing the =
error handling and decided to use sg? In other words, is this a real bug, o=
r just something you think should work but does not?<br></div><br>On Tuesda=
y, April 9, 2019 at 5:36:42 PM UTC-4, Jaesoo Lee wrote:<blockquote class=3D=
"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc s=
olid;padding-left: 1ex;">Hi,
<br>
<br>Thanks for the comments.
<br>
<br>I tried to run sg_write_same over sg device and I am seeing the same pr=
oblem.
<br>
<br>The result is as follows:
<br>
<br>0. Kernel configs
<br>Version: 5.1-rc1
<br>Boot parameter: dm_mod.use_blk_mq=3DY scsi_mod.use_blk_mq=3DY
<br>
<br>1. Normal state
<br>: (As expected) The command succeeded
<br>
<br>$ sg_write_same --lba=3D100 --xferlen=3D512 /dev/sg5
<br>$
<br>
<br>2. Immediately after bringing down the iSCSI interface at the target
<br>: (As expected) Failed with DID_TRANSPORT_DISRUPTED after a few seconds
<br>
<br>$ sg_write_same --lba=3D100 --xferlen=3D512 /dev/sg5
<br>Write same: transport: Host_status=3D0x0e [DID_TRANSPORT_DISRUPTED]
<br>Driver_status=3D0x00 [DRIVER_OK, SUGGEST_OK]
<br>
<br>Write same(10) command failed
<br>
<br>3. Immediately after the DID_TRANSPORT_DISRUPTED error
<br>: (BUG) The command succeeded after a few seconds
<br>
<br>$ sg_write_same --lba=3D100 --xferlen=3D512 /dev/sg5
<br>$
<br>
<br>: Kernel logs
<br>Apr =C2=A08 18:28:03 init21-16 kernel: session1: session recovery timed=
 out
<br>after 10 secs
<br>Apr =C2=A08 18:28:03 init21-16 kernel: sd 8:0:0:5: rejecting I/O to off=
line device
<br>
<br>4. Issued IO again
<br>: (As expected) The command failed
<br>
<br>$ sg_write_same --lba=3D100 --xferlen=3D512 /dev/sg5
<br>Write same: pass through os error: No such device or address
<br>Write same(10) command failed
<br>
<br>Let me upload my fix for this and please give me some comments on that.
<br>
<br>Thanks,
<br>
<br>Jaesoo Lee.
<br>
<br>---------- Forwarded message ---------
<br>From: Douglas Gilbert <br>Date: Wed, Apr 3, 2019 at 2:06 PM
<br>Subject: Re: [bug report][scsi blk_mq] data corruption due to a bug in
<br>SCSI LLD error handling
<br>To: &lt;...&gt;<br>
<br>
<br>On 2019-04-03 4:18 p.m., Jaesoo Lee wrote:
<br>&gt; Hello All,
<br>&gt;
<br>&gt; I encountered this bug while trying to enable dm_blk_mq for our
<br>&gt; iSCSI/FCP targets.
<br>&gt;
<br>&gt; The bug is that the sg_io issued to scsi_blk_mq would succeed even=
 if
<br>&gt; LLD wants to error out those requests.
<br>&gt;
<br>&gt; Let me explain the scenario in more details.
<br>&gt;
<br>&gt; Setup:
<br>&gt; 0. Host kernel configuration
<br>&gt; - 4.19.9, 4.20.16
<br>&gt; - boot parameter: dm_mod.use_blk_mq=3DY scsi_mod.use_blk_mq=3DY
<br>&gt; scsi_transport_iscsi.debug_<wbr>session=3D1 scsi_transport_iscsi.d=
ebug_<wbr>conn=3D1
<br>&gt;
<br>&gt; Scenario:
<br>&gt; 1. Connect the host to iSCSI target via four paths
<br>&gt; : A dm device is created for those target devices
<br>&gt; 2. Start an application in the host which generates sg_io ioctl fo=
r
<br>&gt; XCOPY and WSAME to the dm device with the ratio of around 50%
<br>&gt; (pread/pwrite for the rest).
<br>&gt; 3. Perform system crash (sysrq-trigger) in the iSCSI target
<br>&gt;
<br>&gt; Expected result:
<br>&gt; - Any outstanding IOs should get failed with errors
<br>&gt;
<br>&gt; Actual results:
<br>&gt; - Normal read/write IOs get failed as expected
<br>&gt; - SG_IO ioctls SUCCEEDED!!
<br>
<br>Not all ioctl(SG_IO)s are created equal!
<br>
<br>If you are using the sg v3 interface (i.e. struct sg_io_hdr) then I wou=
ld
<br>expect DRIVER_TIMEOUT in sg_io_obj.driver_status or DID_TIME_OUT in
<br>sg_io_obj.host_status to be set on completion. [BTW You will _not_ see
<br>a ETIMEDOUT errno; only errors prior to submission yield errno style
<br>errors.]
<br>
<br>If you don&#39;t see that with ioctl(SG_IO) on a block device then try =
again on
<br>a sg device. If neither report that then the mid-level error processing
<br>is broken.
<br>
<br>Doug Gilbert
<br>
<br>
<br>&gt; - log message:
<br>&gt; [Tue Apr =C2=A02 11:26:34 2019] =C2=A0session3: session recovery t=
imed out after 11 secs
<br>&gt; [Tue Apr =C2=A02 11:26:34 2019] =C2=A0session3: session_recovery_t=
imedout:
<br>&gt; Unblocking SCSI target
<br>&gt; ..
<br>&gt; [Tue Apr =C2=A02 11:26:34 2019] sd 8:0:0:8: scsi_prep_state_check:
<br>&gt; rejecting I/O to offline device
<br>&gt; [Tue Apr =C2=A02 11:26:34 2019] sd 8:0:0:8: scsi_prep_state_check:
<br>&gt; rejecting I/O to offline device
<br>&gt; [Tue Apr =C2=A02 11:26:34 2019] sd 8:0:0:8: scsi_prep_state_check:
<br>&gt; rejecting I/O to offline device
<br>&gt; [Tue Apr =C2=A02 11:26:34 2019] print_req_error: I/O error, dev sd=
i, sector 30677580
<br>&gt; [Tue Apr =C2=A02 11:26:34 2019] device-mapper: multipath: Failing =
path 8:128.
<br>&gt; [Tue Apr =C2=A02 11:26:34 2019] SG_IO disk=3Dsdi, result=3D0x0
<br>&gt;
<br>&gt; - This causes the DATA corruption for the application
<br>&gt;
<br>&gt; Relavant call stacks: (SG_IO issue path)
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] sd 8:0:0:8: [sdi] sd_ioctl: disk=
=3Dsdi, cmd=3D0x2285
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] SG_IO disk=3Dsdi, retried 1 cmd 93
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] CPU: 30 PID: 16080 Comm: iostress =
Not
<br>&gt; tainted 4.19.9-purekernel_dbg.x86_64+ #30
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] Hardware name: =C2=A0/0JP31P, BIOS=
 2.0.19 08/29/2013
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] Call Trace:
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0dump_stack+0x63/0x85
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0sg_io+0x41e/0x480
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0scsi_cmd_ioctl+0x297/0x420
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0? sdev_prefix_printk+0xe9/0x=
120
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0? _cond_resched+0x1a/0x50
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0scsi_cmd_blk_ioctl+0x51/0x70
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0sd_ioctl+0x95/0x1a0 [sd_mod]
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0__blkdev_driver_ioctl+0x25/<=
wbr>0x30
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0dm_blk_ioctl+0x79/0x100 [dm_=
mod]
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0blkdev_ioctl+0x89a/0x940
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0? do_nanosleep+0xae/0x180
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0block_ioctl+0x3d/0x50
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0do_vfs_ioctl+0xa6/0x600
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0? __audit_syscall_entry+0xe9=
/<wbr>0x130
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0ksys_ioctl+0x6d/0x80
<br>&gt; ).[Tue Apr =C2=A02 11:26:33 2019] =C2=A0__x64_sys_ioctl+0x1a/0x20
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0do_syscall_64+0x60/0x180
<br>&gt; [Tue Apr =C2=A02 11:26:33 2019] =C2=A0entry_SYSCALL_64_after_<wbr>=
hwframe+0x44/0xa9
<br>&gt;
<br>&gt; According to the analysis, it seems that there is a bug in propaga=
ting
<br>&gt; errors for iSCSI session timeout (i.e., session_recovery_timedout)=
.
<br>&gt; Compared to this, legacy SCSI queue handles the errors in
<br>&gt; scsi_request_fn by killing the request as can be seen below.
<br>&gt;
<br>&gt; 1872 static void scsi_request_fn(struct request_queue *q)
<br>&gt; 1873 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __releases(q-&gt;queue_lock)
<br>&gt; 1874 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __acquires(q-&gt;queue_lock)
<br>&gt; 1875 {
<br>&gt; ..
<br>&gt; 1886 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (;;) {
<br>&gt; ..
<br>&gt; 1893 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 req =
=3D blk_peek_request(q);
<br>&gt; 1894 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!=
req)
<br>&gt; 1895 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 break;
<br>&gt; 1896
<br>&gt; 1897 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (u=
nlikely(!scsi_device_online(<wbr>sdev))) {
<br>&gt; 1898 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 sdev_printk(KERN_ERR, sdev,
<br>&gt; 1899 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;sc=
si_request_fn: rejecting
<br>&gt; I/O to offline device\n&quot;);
<br>&gt; 1900 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 scsi_kill_request(req, q);
<br>&gt; 1901 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 continue;
<br>&gt; 1902 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
<br>&gt; 1903
<br>&gt;
<br>&gt; I am not sure in which layer we have to fix this, LLD or scsi_queu=
e_rq().
<br>&gt;
<br>&gt; Could someone please take a look? Or, could someone guide me on ho=
w to
<br>&gt; fix this bug?
<br>&gt;
<br>&gt; Thanks,
<br>&gt;
<br>&gt; Jaesoo Lee.
<br>&gt;
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To post to this group, send email to <a href=3D"mailto:open-iscsi@googlegro=
ups.com">open-iscsi@googlegroups.com</a>.<br />
Visit this group at <a href=3D"https://groups.google.com/group/open-iscsi">=
https://groups.google.com/group/open-iscsi</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/68eeea59-fbe9-413d-bf24-e3523b69d75f%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/68eeea59-fbe9-413d-bf24-e3523b69d75f%40googlegroups.com</a>.<b=
r />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_403_76207669.1557413478096--

------=_Part_402_83696776.1557413478095--
