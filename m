Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBGW526OAMGQENAWU6MA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3B66494BC
	for <lists+open-iscsi@lfdr.de>; Sun, 11 Dec 2022 15:52:13 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id de43-20020a05620a372b00b006fae7e5117fsf11153571qkb.6
        for <lists+open-iscsi@lfdr.de>; Sun, 11 Dec 2022 06:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jJ5wYextkeedXWobeaK/Vc5o3limBmBOSJ+4AVLiFfM=;
        b=jwXBnj+n0zRK/RirrhOr7G0bgmzAdMqBPWwhFjFtK3CGi6dVJTRAg0ny72IYU3XpUb
         ToFmuv0U9Plo8kiuZ9X6DPjoyznfV10JUcoel4NKUpY04be6Av3pxTjK7Xq43GzjvJ+U
         fEPznxIr0jVQa+08DsaH9bnycfH6Pc6ohnZb+UETZ+l4vjawnCFa6FW7quF5bSp9BEGb
         wnus1w2yyLJ/5Pead7FSSt9dqNwW3hUokpE9qIy5wh9RYAiIq9w//Y4dqODs9Xgnpwa/
         9WgzkH4/4hCDkqDVho/u5EbOhhKyMVzLeg+jbQ4qQxkl9Y5TZfcIlzdegNLGUMBDsn9O
         w8TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jJ5wYextkeedXWobeaK/Vc5o3limBmBOSJ+4AVLiFfM=;
        b=0h9hSlw5FHv6+oP6v1OQN89ZkPWtboituiyUxt/1banMcFmyrtTDbzxQ/4CHIgS/Kb
         P/Qdll/9oMxTOGRfFl4/5+nLnpdssyKKl/5PxwZzHiCoqk2ErVeWyHtduYMM4saWYDOZ
         ASYzkhzMS2z8iTpZhOGPRoSJebVRK0wq/qJXejnrvvFerg6qJYDxSQsH23cENlVPq4gM
         4aU2QirJ+k2crFqbIS81cLSlEYAVYmzPIwSylw0U5Cdnx7ofbLHpvB0Zfyi1hFj6NTbY
         pRGTReJ3IUiiAnVegPhsdgo5gAdP46GKxdHBCQauDJmTeobJXxudbGROX/AFndbfQcTS
         8BLA==
X-Gm-Message-State: ANoB5pmYcxP5Y1gXpw9EI88+MPpkPSadr5fmWhjNjdOHN231cgCcq6Jl
	rTfeh6ndBRCPltN29psKSJA=
X-Google-Smtp-Source: AA0mqf7N7UM4aml4eOjXyDhODzvzIu4iZCI2FLwK1aq/9hidpRsxLSYzvzR1VuDWWbRHZZm84vAG8Q==
X-Received: by 2002:a05:6214:4212:b0:4b4:b38e:781d with SMTP id nd18-20020a056214421200b004b4b38e781dmr70050924qvb.104.1670770331409;
        Sun, 11 Dec 2022 06:52:11 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:e38e:0:b0:4c7:4896:f2c9 with SMTP id a14-20020a0ce38e000000b004c74896f2c9ls6920523qvl.8.-pod-prod-gmail;
 Sun, 11 Dec 2022 06:52:09 -0800 (PST)
X-Received: by 2002:a0c:ed45:0:b0:4c7:9a42:7c08 with SMTP id v5-20020a0ced45000000b004c79a427c08mr4115867qvq.44.1670770329591;
        Sun, 11 Dec 2022 06:52:09 -0800 (PST)
Date: Sun, 11 Dec 2022 06:52:08 -0800 (PST)
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <d0588551-af9f-4795-b697-33917f80d12cn@googlegroups.com>
In-Reply-To: <CAOptpSP1L4EAVcHJ5xEDF+iZTziOVt=E7KGefj+3Vj9-fN-a-A@mail.gmail.com>
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com>
 <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
 <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>
 <CAOptpSO=BEGWFkzT2umFXnWSyn24XR5nHc-mnTvsVb6PAn=4xA@mail.gmail.com>
 <057b6774-646d-5970-4743-20e249856688@suse.com>
 <CAOptpSMzQC0ur7oWFRD0fzie7eENxh6JK+c0JE+oLhCiypQBRA@mail.gmail.com>
 <181bdb6a-fbaf-1e18-9d08-4bbabf467321@suse.com>
 <CAOptpSP1L4EAVcHJ5xEDF+iZTziOVt=E7KGefj+3Vj9-fN-a-A@mail.gmail.com>
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7258_1615872942.1670770328655"
X-Original-Sender: haowenchao@huawei.com
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

------=_Part_7258_1615872942.1670770328655
Content-Type: multipart/alternative; 
	boundary="----=_Part_7259_1296686265.1670770328655"

------=_Part_7259_1296686265.1670770328655
Content-Type: text/plain; charset="UTF-8"

On Wednesday, December 7, 2022 at 1:01:23 AM UTC+8 Wenchao Hao wrote:

> On Tue, Dec 6, 2022 at 1:13 AM Lee Duncan <ldu...@suse.com> wrote: 
> > 
> > On 12/4/22 05:02, Wenchao Hao wrote: 
> > > On Thu, Dec 1, 2022 at 3:53 AM Lee Duncan <ldu...@suse.com> wrote: 
> > >> 
> > ... 
> > >> 
> > >> Let me start by saying I agree with you now, that there *is* an 
> issue. 
> > >> But your test was flawed. 
> > >> 
> > >> After you log into a target, changing the Node database does nothing. 
> > >> The node database is only referenced with you login using it, e.g. 
> > >> "iscsiadm -m node ... -l". 
> > >> 
> > >> But even if you logged out and then back into the target, thereby 
> using 
> > >> the updated Node DB entries, it would not have worked. 
> > >> 
> > >> For one thing, "iscsiadm -m session -u" just logs out of all 
> sessions, 
> > >> as far as I can see, based on testing and code inspection. So that is 
> a 
> > >> problem. 
> > >> 
> > >> Note that the iscsi.service systemd service file on SLES does "not" 
> do 
> > >> that. It instead logs of of "manual" and "automatic" session, but 
> only 
> > >> ones that are listed in the Node database. 
> > >> 
> > >> And as you pointed out, any knowledge iscsid has of existing sessions 
> is 
> > >> lost if the daemmon dies or is stopped, then restarted. At that 
> point, 
> > >> the only knowledge is has about each session is what it finds in 
> sysfs. 
> > >> 
> > >> I have done some testing with your new kernel change that adds a 
> > >> "node_startup" sysfs string attribute to session data. I modified 
> > >> open-iscsi to pass in the node startup value, and that's a good 
> start. 
> > >> The next step is adding a "startup" value in the session structure, 
> > >> filling it in from sysfs (or current state), and refusing to logout 
> out 
> > >> of sesions that have this set to "onboot", which all sounds fairly 
> > >> simple. I also want to test with "iscsiadm -m fw -l", which is what I 
> > >> believe is used when booting from software iscsi (i.e. iBFT). 
> > >> 
> > >> Have you already worked on the open-iscsi side of this? No reason for 
> > >> duplicate development. 
> > >> 
> > >> -- 
> > >> Lee Duncan 
> > >> 
> > > 
> > > Sorry I missed this message, I have modified open-iscsi to work 
> > > with this sysfs interface. But I think we do not need this any more 
> > > because the safe logout can avoid disks being removed. 
> > > 
> > > Checking holders and if disk is mounted before logout seems enough, 
> > > so ignore this discussion. 
> > > 
> > > Thank you very much for your reply. 
> > 
> > I have some philosophical issues with using safe_logout. 
> > 
> > It is off by default, which implies to me that it has overhead. If I'm 
> > doing a lot of iscsi session start/stops, I don't want the overhead. 
> > Otherwise, why not just use it all the time. 
> > 
> > Also, it only checks for mounts. What about if some process has the 
> > device open but isn't using it for a filesystem? 
> > 
> > And since it has overhead, I'd rather just use it on root iscsi volumes. 
> > I have not had a single problem report from folks that have ended a 
> > session by accident that is mounted on. Since ending your root volume 
> > iscsi session is fatal, I _would_ like to proactively avoid that 
> > possibility. So I want to only set this attribute on iscsi root volumes, 
> > which means it'd have to be a per-node (or per-session) attribute, not a 
> > global one. 
> > 
> > Lastly, I can imagine a time when I want to override safe_logout, say if 
> > some process is stuck. So it'd be nice to have a "--force" option to end 
> > a session even if safe_logout is set. 
> > 
> > But as I said, these objections are philosophical/theoretical. 
> > 
> > And for the record, I like the idea of tracking the "start mode" of 
> > sessions. Right now, if I list the iscsi sessions, I can't tell which 
> > ones where started from firmware, which were started in the initrd, and 
> > which were just manually started. So tracking (and being able to 
> > display) the startup mode would only be a good thing IMHO. 
> > -- 
> > Lee D 
> > 
> >


My previous reply was in a mess format, here is the formatted one: 

The original purpose of my patch is to record session's startup_mode
in the kernel, so iscsiadm/iscsid can refer to it before logout session,
this can fix both the two issues.

While the safe_logout mode can solve the first issue in another way by
checking if iscsi disk is in used. But we did not enable safe_logout as
default and it can not cover the sense when iscsi disks in not mounted
nor used by multipath or lvm.

The safe_logout mode can not address the issue which iscsiadm/iscsid
can overwrite session's startup_mode.

Firstly, we need to come to one same conclusion that if it is a bug to
be fixed, then discuss how to fix it.

If we treat this issue as a bug, we have two ways to fix it:

1. Recording session's startup_mode in kernel is a way to fix it
2. Checking if session has been created for this node before updating
the node's configure file is another way. But we must be strict our
users would not edit the configure files by hand.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d0588551-af9f-4795-b697-33917f80d12cn%40googlegroups.com.

------=_Part_7259_1296686265.1670770328655
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Wednes=
day, December 7, 2022 at 1:01:23 AM UTC+8 Wenchao Hao wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px=
 solid rgb(204, 204, 204); padding-left: 1ex;">On Tue, Dec 6, 2022 at 1:13 =
AM Lee Duncan &lt;<a href=3D"" data-email-masked=3D"" rel=3D"nofollow">ldu.=
..@suse.com</a>&gt; wrote:
<br>&gt;
<br>&gt; On 12/4/22 05:02, Wenchao Hao wrote:
<br>&gt; &gt; On Thu, Dec 1, 2022 at 3:53 AM Lee Duncan &lt;<a href=3D"" da=
ta-email-masked=3D"" rel=3D"nofollow">ldu...@suse.com</a>&gt; wrote:
<br>&gt; &gt;&gt;
<br>&gt; ...
<br>&gt; &gt;&gt;
<br>&gt; &gt;&gt; Let me start by saying I agree with you now, that there *=
is* an issue.
<br>&gt; &gt;&gt; But your test was flawed.
<br>&gt; &gt;&gt;
<br>&gt; &gt;&gt; After you log into a target, changing the Node database d=
oes nothing.
<br>&gt; &gt;&gt; The node database is only referenced with you login using=
 it, e.g.
<br>&gt; &gt;&gt; "iscsiadm -m node ... -l".
<br>&gt; &gt;&gt;
<br>&gt; &gt;&gt; But even if you logged out and then back into the target,=
 thereby using
<br>&gt; &gt;&gt; the updated Node DB entries, it would not have worked.
<br>&gt; &gt;&gt;
<br>&gt; &gt;&gt; For one thing, "iscsiadm -m session -u" just logs out of =
all sessions,
<br>&gt; &gt;&gt; as far as I can see, based on testing and code inspection=
. So that is a
<br>&gt; &gt;&gt; problem.
<br>&gt; &gt;&gt;
<br>&gt; &gt;&gt; Note that the iscsi.service systemd service file on SLES =
does "not" do
<br>&gt; &gt;&gt; that. It instead logs of of "manual" and "automatic" sess=
ion, but only
<br>&gt; &gt;&gt; ones that are listed in the Node database.
<br>&gt; &gt;&gt;
<br>&gt; &gt;&gt; And as you pointed out, any knowledge iscsid has of exist=
ing sessions is
<br>&gt; &gt;&gt; lost if the daemmon dies or is stopped, then restarted. A=
t that point,
<br>&gt; &gt;&gt; the only knowledge is has about each session is what it f=
inds in sysfs.
<br>&gt; &gt;&gt;
<br>&gt; &gt;&gt; I have done some testing with your new kernel change that=
 adds a
<br>&gt; &gt;&gt; "node_startup" sysfs string attribute to session data. I =
modified
<br>&gt; &gt;&gt; open-iscsi to pass in the node startup value, and that's =
a good start.
<br>&gt; &gt;&gt; The next step is adding a "startup" value in the session =
structure,
<br>&gt; &gt;&gt; filling it in from sysfs (or current state), and refusing=
 to logout out
<br>&gt; &gt;&gt; of sesions that have this set to "onboot", which all soun=
ds fairly
<br>&gt; &gt;&gt; simple. I also want to test with "iscsiadm -m fw -l", whi=
ch is what I
<br>&gt; &gt;&gt; believe is used when booting from software iscsi (i.e. iB=
FT).
<br>&gt; &gt;&gt;
<br>&gt; &gt;&gt; Have you already worked on the open-iscsi side of this? N=
o reason for
<br>&gt; &gt;&gt; duplicate development.
<br>&gt; &gt;&gt;
<br>&gt; &gt;&gt; --
<br>&gt; &gt;&gt; Lee Duncan
<br>&gt; &gt;&gt;
<br>&gt; &gt;
<br>&gt; &gt; Sorry I missed this message, I have modified open-iscsi to wo=
rk
<br>&gt; &gt; with this sysfs interface. But I think we do not need this an=
y more
<br>&gt; &gt; because the safe logout can avoid disks being removed.
<br>&gt; &gt;
<br>&gt; &gt; Checking holders and if disk is mounted before logout seems e=
nough,
<br>&gt; &gt; so ignore this discussion.
<br>&gt; &gt;
<br>&gt; &gt; Thank you very much for your reply.
<br>&gt;
<br>&gt; I have some philosophical issues with using safe_logout.
<br>&gt;
<br>&gt; It is off by default, which implies to me that it has overhead. If=
 I'm
<br>&gt; doing a lot of iscsi session start/stops, I don't want the overhea=
d.
<br>&gt; Otherwise, why not just use it all the time.
<br>&gt;
<br>&gt; Also, it only checks for mounts. What about if some process has th=
e
<br>&gt; device open but isn't using it for a filesystem?
<br>&gt;
<br>&gt; And since it has overhead, I'd rather just use it on root iscsi vo=
lumes.
<br>&gt; I have not had a single problem report from folks that have ended =
a
<br>&gt; session by accident that is mounted on. Since ending your root vol=
ume
<br>&gt; iscsi session is fatal, I _would_ like to proactively avoid that
<br>&gt; possibility. So I want to only set this attribute on iscsi root vo=
lumes,
<br>&gt; which means it'd have to be a per-node (or per-session) attribute,=
 not a
<br>&gt; global one.
<br>&gt;
<br>&gt; Lastly, I can imagine a time when I want to override safe_logout, =
say if
<br>&gt; some process is stuck. So it'd be nice to have a "--force" option =
to end
<br>&gt; a session even if safe_logout is set.
<br>&gt;
<br>&gt; But as I said, these objections are philosophical/theoretical.
<br>&gt;
<br>&gt; And for the record, I like the idea of tracking the "start mode" o=
f
<br>&gt; sessions. Right now, if I list the iscsi sessions, I can't tell wh=
ich
<br>&gt; ones where started from firmware, which were started in the initrd=
, and
<br>&gt; which were just manually started. So tracking (and being able to
<br>&gt; display) the startup mode would only be a good thing IMHO.
<br>&gt; --
<br>&gt; Lee D
<br>&gt;
<br>&gt;</blockquote><div><br></div><div>My previous reply was in a mess fo=
rmat, here is the formatted one: <br><br>The original purpose of my patch i=
s to record session's startup_mode<br>in the kernel, so iscsiadm/iscsid can=
 refer to it before logout session,<br>this can fix both the two issues.<br=
><br>While the safe_logout mode can solve the first issue in another way by=
<br>checking if iscsi disk is in used. But we did not enable safe_logout as=
<br>default and it can not cover the sense when iscsi disks in not mounted<=
br>nor used by multipath or lvm.<br><br>The safe_logout mode can not addres=
s the issue which iscsiadm/iscsid<br>can overwrite session's startup_mode.<=
br><br>Firstly, we need to come to one same conclusion that if it is a bug =
to<br>be fixed, then discuss how to fix it.<br><br>If we treat this issue a=
s a bug, we have two ways to fix it:<br><br>1. Recording session's startup_=
mode in kernel is a way to fix it<br>2. Checking if session has been create=
d for this node before updating<br>the node's configure file is another way=
. But we must be strict our<br>users would not edit the configure files by =
hand.</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/d0588551-af9f-4795-b697-33917f80d12cn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/d0588551-af9f-4795-b697-33917f80d12cn%40googlegroups.com</a>.=
<br />

------=_Part_7259_1296686265.1670770328655--

------=_Part_7258_1615872942.1670770328655--
