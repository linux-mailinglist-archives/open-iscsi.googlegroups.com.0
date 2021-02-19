Return-Path: <open-iscsi+bncBC755V5RXMKBB4NSYCAQMGQEN7HRD3Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC1531FFA2
	for <lists+open-iscsi@lfdr.de>; Fri, 19 Feb 2021 21:02:58 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id 99sf2635060oty.5
        for <lists+open-iscsi@lfdr.de>; Fri, 19 Feb 2021 12:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=V8A/w6fjbuLx8rwJxQ6dwJW82uu3hgeXOOv2scGYWY4=;
        b=VT/tsGlt6uzxH7yJ4SnR5mWSN3OfTp8vGeunI0VVmrcFYiyNGWBGOpTtV8TmnbURi+
         MFWMGjSjixp9ETOmavsmz96fYXKmODdUHUDEdlPG32we3Esy9mHBAhkLZbMETBf3x3Ga
         luHkCZ1ApsUDrMrgudYL20GoB+MlJc7W+5/z7FpRvQEpJiGXF+7/m6vkIu5JTTTtx15M
         T9jqvFOKFh/KjsE8mwNGNkhnZz23cgQZk2p8+VRjf9/E39Oo5gVz9NxbvkDQRubPVQ+w
         ISYZNgQz8R5YwdLR1pbjH9FG4bmaGVU9vOvPbc+157c2Bev3khVlLUGy+MjFCwmRvLS9
         lVtQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V8A/w6fjbuLx8rwJxQ6dwJW82uu3hgeXOOv2scGYWY4=;
        b=gOa9/4nAZXreR7Gh0d+ISHF1y9gq03zXms1+gR1qFjH9ozGZ2anafOsquIwAr+KoGW
         TlkSF1js2OcHEwvY5AFm13gcfOQPlinpGs6yZmZ7X+2ibMMv2roaKBmBHhEfEUnZow/P
         c+HMSwLEcdYvfGVG7eG0MF/8wlA8A8hh8hY99KAifdVSqxXzNaUVwbEOQprOJoqnfVeQ
         r7bUnACFSgWfTpt8V3ybHgJxdCVd/zI04izLQQYKhhjbTMhdGt7xC2OmnfvG2MlIVP3H
         /BVH6fNZ8AqGtDr7rJXmfM8e+gTmL2Kui1nwkiwDGC4PYso51BpnKpRux7bDKzo8u0us
         46EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V8A/w6fjbuLx8rwJxQ6dwJW82uu3hgeXOOv2scGYWY4=;
        b=TBTJbkMoH8bYWUWwuVndg+QUpMxsu0FFSOY1jxOze0wSMhnDYIopAHOOTWYfJfftYX
         OAnfJFB/k7ecg/BDqdDpIfMO7rqCIcyJ5g77f3b7C7wdpd1dUEmt1YhoQHoYrQtyLopq
         GoyrhCdgGkC8jJurwpIHZ/3OGevEX5/0XR+1OyqTJ4h1H38FQ53ShTm9f5JJ1ppTHfs4
         E8KJQn76f/ZpB0pZFre2plHrxkeWE8Vv9xTaSY5cRlE3WXUmP1PWnpBZrtXLGRBOxCXO
         402q8/d60wZXhzxSZE/dU7KCO8HlXiv9n1N985Uc+XxDu+zc/ZqFvTiVtIOOxsuzeo57
         m7Nw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530qInQZ7t/I+SGfcEdBI4IjTtm8ZXBIzgHItOLx1erpZXk2YMjU
	VDU+Gt41HLP1oqmr0WFfeoM=
X-Google-Smtp-Source: ABdhPJxFZ5IUUNven3n97kvSCyFBMEb7YHeOsCFULHYGKJ9KdIahfKZ4VjpZSzwRoctwWWjsmqcHFQ==
X-Received: by 2002:a05:6830:2497:: with SMTP id u23mr2809805ots.61.1613764977654;
        Fri, 19 Feb 2021 12:02:57 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:bb82:: with SMTP id l124ls2647276oif.0.gmail; Fri, 19
 Feb 2021 12:02:56 -0800 (PST)
X-Received: by 2002:aca:1c05:: with SMTP id c5mr7924779oic.141.1613764976863;
        Fri, 19 Feb 2021 12:02:56 -0800 (PST)
Date: Fri, 19 Feb 2021 12:02:56 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <54f8f86d-cced-402e-93c3-e63baa261ec0n@googlegroups.com>
In-Reply-To: <eb5a3e8a-713d-4ae2-82bd-6c18afc5d6e8n@googlegroups.com>
References: <eb5a3e8a-713d-4ae2-82bd-6c18afc5d6e8n@googlegroups.com>
Subject: Re: Kernel panic: Hung task on unbind session
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1338_2113264295.1613764976249"
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

------=_Part_1338_2113264295.1613764976249
Content-Type: multipart/alternative; 
	boundary="----=_Part_1339_201871052.1613764976249"

------=_Part_1339_201871052.1613764976249
Content-Type: text/plain; charset="UTF-8"

Yes, you bring up a good point in my opinion. I do not know this code well, 
but it seems like UNBIND_SESSION could never work.

Mike Chistie? Chris Leech?

On Thursday, January 21, 2021 at 6:52:27 AM UTC-8 ajhu...@gmail.com wrote:

> Hi Folks,
>
> I am looking at a kernel panic due to a hung task and could use some help 
> understanding whether this is a known issue.  Kernel version is 4.14.63.
>
> Here is an complete stack trace of the hung kworker task.
>
> crash> bt 106700
> PID: 106700  TASK: ffff885eb22ebe80  CPU: 8   COMMAND: "kworker/u32:0"
>  #0 [ffffc900550ebab8] __schedule at ffffffff815f0b78
>  #1 [ffffc900550ebb50] schedule at ffffffff815f1248
>  #2 [ffffc900550ebb58] schedule_timeout at ffffffff815f4fe6
>  #3 [ffffc900550ebbf8] wait_for_completion at ffffffff815f1cf0
>  #4 [ffffc900550ebc48] flush_workqueue at ffffffff8108ec66
>  #5 [ffffc900550ebce8] drain_workqueue at ffffffff8108ef84
>  #6 [ffffc900550ebd10] destroy_workqueue at ffffffff81091ce5
>  #7 [ffffc900550ebd30] scsi_host_dev_release at ffffffffa0095ced [scsi_mod]
>  #8 [ffffc900550ebd48] device_release at ffffffff81453c90
>  #9 [ffffc900550ebd68] kobject_put at ffffffff815d8130
> #10 [ffffc900550ebd88] iscsi_session_release at ffffffffa0aebf88 
> [scsi_transport_iscsi]
> #11 [ffffc900550ebda8] device_release at ffffffff81453c90
> #12 [ffffc900550ebdc8] kobject_put at ffffffff815d8130
> #13 [ffffc900550ebde8] device_release at ffffffff81453c90
> #14 [ffffc900550ebe08] kobject_put at ffffffff815d8130
> #15 [ffffc900550ebe28] scsi_remove_target at ffffffffa00a3e92 [scsi_mod]
> #16 [ffffc900550ebe70] __iscsi_unbind_session at ffffffffa0aecd8d 
> [scsi_transport_iscsi]
> #17 [ffffc900550ebe98] process_one_work at ffffffff8108f62a
> #18 [ffffc900550ebed8] worker_thread at ffffffff8108f84b
> #19 [ffffc900550ebf10] kthread at ffffffff8109536a
> #20 [ffffc900550ebf50] ret_from_fork at ffffffff816001ef
>
> After poking around in the kdump, I've discovered that the worker thread 
> that called __iscsi_unbind_session did so for a work item that came from 
> the same workqueue that is being destroyed at the top of the stack. My 
> understanding of work queues is that this isn't allowed and will result in 
> a hung task.   
>
> Here we can see where the __iscsi_unbind_session work is queued to a SCSI 
> work queue
>
> static int
> iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t 
> *group)
> {
> .
> .
> .
> case ISCSI_UEVENT_UNBIND_SESSION:
> session = iscsi_session_lookup(ev->u.d_session.sid);
> if (session)
> scsi_queue_work(iscsi_session_to_shost(session),     <--- unbind work 
> queued to scsi work queue
> &session->unbind_work);
> else
> err = -EINVAL;
> break;
> Here we can see that this puts the work item onto Scsi_Host->work_q 
>
> int scsi_queue_work(struct Scsi_Host *shost, struct work_struct *work)
> {
> if (unlikely(!shost->work_q)) {
> shost_printk(KERN_ERR, shost,
> "ERROR: Scsi host '%s' attempted to queue scsi-work, "
> "when no workqueue created.\n", shost->hostt->name);
> dump_stack();
>
> return -EINVAL;
> }
>
> return queue_work(shost->work_q, work);      <--- Work item goes into 
> Scsi_Host->work_q
> }
> Here we can see the scsi_host_dev_release routine destroying the 
> Scsi_Host->work_q
>
> static void scsi_host_dev_release(struct device *dev)
> {
> struct Scsi_Host *shost = dev_to_shost(dev);
> struct device *parent = dev->parent;
>
> scsi_proc_hostdir_rm(shost->hostt);
>
> /* Wait for functions invoked through call_rcu(&shost->rcu, ...) */
> rcu_barrier();
>
> if (shost->tmf_work_q)
> destroy_workqueue(shost->tmf_work_q);
> if (shost->ehandler)
> kthread_stop(shost->ehandler);
> if (shost->work_q)
> destroy_workqueue(shost->work_q);      <--- Destroying Scsi_Host->work_q
>
> I did some searching and couldn't locate a similar stack trace. Does 
> anyone know if this a known issue? 
>
> If not a known issue, any ideas as to what would normally keep the 
> Scsi_Host device from being removed inline in this call stack? This 
> happened on two hosts with mniutes of each other after starting to 
> disconnect from 2 targets. I believe the unbind session was kicked off from 
> an iscsiadm command to terminate the session but other than that nothing 
> out of the ordinary was going on. 
>
> Thanks in advance, 
> Adam
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/54f8f86d-cced-402e-93c3-e63baa261ec0n%40googlegroups.com.

------=_Part_1339_201871052.1613764976249
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Yes, you bring up a good point in my opinion. I do not know this code =
well, but it seems like UNBIND_SESSION could never work.</div><div><br></di=
v><div>Mike Chistie? Chris Leech?<br></div><br><div class=3D"gmail_quote"><=
div dir=3D"auto" class=3D"gmail_attr">On Thursday, January 21, 2021 at 6:52=
:27 AM UTC-8 ajhu...@gmail.com wrote:<br/></div><blockquote class=3D"gmail_=
quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 2=
04); padding-left: 1ex;"><div>Hi Folks,</div><div><br></div><div>I am looki=
ng at a kernel panic due to a hung task and could use some help understandi=
ng whether this is a known issue.=C2=A0 Kernel version is 4.14.63.</div><di=
v><br></div><div>Here is an complete stack trace of the hung kworker task.<=
/div><div><br></div><div><font face=3D"Courier New">crash&gt; bt 106700</fo=
nt></div><div><font face=3D"Courier New">PID: 106700=C2=A0 TASK: ffff885eb2=
2ebe80=C2=A0 CPU: 8=C2=A0 =C2=A0COMMAND: &quot;kworker/u32:0&quot;</font></=
div><div><font face=3D"Courier New">=C2=A0#0 [ffffc900550ebab8] __schedule =
at ffffffff815f0b78</font></div><div><font face=3D"Courier New">=C2=A0#1 [f=
fffc900550ebb50] schedule at ffffffff815f1248</font></div><div><font face=
=3D"Courier New">=C2=A0#2 [ffffc900550ebb58] schedule_timeout at ffffffff81=
5f4fe6</font></div><div><font face=3D"Courier New">=C2=A0#3 [ffffc900550ebb=
f8] wait_for_completion at ffffffff815f1cf0</font></div><div><font face=3D"=
Courier New">=C2=A0#4 [ffffc900550ebc48] flush_workqueue at ffffffff8108ec6=
6</font></div><div><font face=3D"Courier New">=C2=A0#5 [ffffc900550ebce8] d=
rain_workqueue at ffffffff8108ef84</font></div><div><font face=3D"Courier N=
ew">=C2=A0#6 [ffffc900550ebd10] destroy_workqueue at ffffffff81091ce5</font=
></div><div><font face=3D"Courier New">=C2=A0#7 [ffffc900550ebd30] scsi_hos=
t_dev_release at ffffffffa0095ced [scsi_mod]</font></div><div><font face=3D=
"Courier New">=C2=A0#8 [ffffc900550ebd48] device_release at ffffffff81453c9=
0</font></div><div><font face=3D"Courier New">=C2=A0#9 [ffffc900550ebd68] k=
object_put at ffffffff815d8130</font></div><div><font face=3D"Courier New">=
#10 [ffffc900550ebd88] iscsi_session_release at ffffffffa0aebf88 [scsi_tran=
sport_iscsi]</font></div><div><font face=3D"Courier New">#11 [ffffc900550eb=
da8] device_release at ffffffff81453c90</font></div><div><font face=3D"Cour=
ier New">#12 [ffffc900550ebdc8] kobject_put at ffffffff815d8130</font></div=
><div><font face=3D"Courier New">#13 [ffffc900550ebde8] device_release at f=
fffffff81453c90</font></div><div><font face=3D"Courier New">#14 [ffffc90055=
0ebe08] kobject_put at ffffffff815d8130</font></div><div><font face=3D"Cour=
ier New">#15 [ffffc900550ebe28] scsi_remove_target at ffffffffa00a3e92 [scs=
i_mod]</font></div><div><font face=3D"Courier New">#16 [ffffc900550ebe70] _=
_iscsi_unbind_session at ffffffffa0aecd8d [scsi_transport_iscsi]</font></di=
v><div><font face=3D"Courier New">#17 [ffffc900550ebe98] process_one_work a=
t ffffffff8108f62a</font></div><div><font face=3D"Courier New">#18 [ffffc90=
0550ebed8] worker_thread at ffffffff8108f84b</font></div><div><font face=3D=
"Courier New">#19 [ffffc900550ebf10] kthread at ffffffff8109536a</font></di=
v><div><font face=3D"Courier New">#20 [ffffc900550ebf50] ret_from_fork at f=
fffffff816001ef</font></div><div><br></div><div>After poking around in the =
kdump, I&#39;ve discovered that the worker thread that called __iscsi_unbin=
d_session did so for a work item that came from the same workqueue that is =
being destroyed at the top of the stack. My understanding of work queues is=
 that this isn&#39;t allowed and will result in a hung task.=C2=A0 =C2=A0</=
div><div><br></div><div>Here we can see where the __iscsi_unbind_session wo=
rk is queued to a SCSI work queue</div><div><br></div><div><font face=3D"Co=
urier New"><span style=3D"white-space:pre">	</span>static int</font></div><=
div><font face=3D"Courier New"><span style=3D"white-space:pre">	</span>iscs=
i_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)</=
font></div><div><font face=3D"Courier New"><span style=3D"white-space:pre">=
	</span>{</font></div><div><font face=3D"Courier New"><span style=3D"white-=
space:pre">	</span>.</font></div><div><font face=3D"Courier New"><span styl=
e=3D"white-space:pre">	</span>.</font></div><div><font face=3D"Courier New"=
><span style=3D"white-space:pre">	</span>.</font></div><div><font face=3D"C=
ourier New"><span style=3D"white-space:pre">		</span>case ISCSI_UEVENT_UNBI=
ND_SESSION:</font></div><div><font face=3D"Courier New"><span style=3D"whit=
e-space:pre">			</span>session =3D iscsi_session_lookup(ev-&gt;u.d_session.=
sid);</font></div><div><font face=3D"Courier New"><span style=3D"white-spac=
e:pre">			</span>if (session)</font></div><div><font face=3D"Courier New"><=
span style=3D"white-space:pre">				</span>scsi_queue_work(iscsi_session_to_=
shost(session),=C2=A0 =C2=A0 =C2=A0&lt;--- unbind work queued to scsi work =
queue</font></div><div><font face=3D"Courier New"><span style=3D"white-spac=
e:pre">						</span>&amp;session-&gt;unbind_work);</font></div><div><font f=
ace=3D"Courier New"><span style=3D"white-space:pre">			</span>else</font></=
div><div><font face=3D"Courier New"><span style=3D"white-space:pre">				</s=
pan>err =3D -EINVAL;</font></div><div><font face=3D"Courier New"><span styl=
e=3D"white-space:pre">			</span>break;</font></div><div><span style=3D"whit=
e-space:pre"><font face=3D"Courier New">		</font></span></div><div>Here we =
can see that this puts the work item onto Scsi_Host-&gt;work_q=C2=A0</div><=
div><br></div><div><font face=3D"Courier New"><span style=3D"white-space:pr=
e">	</span>int scsi_queue_work(struct Scsi_Host *shost, struct work_struct =
*work)</font></div><div><font face=3D"Courier New"><span style=3D"white-spa=
ce:pre">	</span>{</font></div><div><font face=3D"Courier New"><span style=
=3D"white-space:pre">		</span>if (unlikely(!shost-&gt;work_q)) {</font></di=
v><div><font face=3D"Courier New"><span style=3D"white-space:pre">			</span=
>shost_printk(KERN_ERR, shost,</font></div><div><font face=3D"Courier New">=
<span style=3D"white-space:pre">				</span>&quot;ERROR: Scsi host &#39;%s&#=
39; attempted to queue scsi-work, &quot;</font></div><div><font face=3D"Cou=
rier New"><span style=3D"white-space:pre">				</span>&quot;when no workqueu=
e created.\n&quot;, shost-&gt;hostt-&gt;name);</font></div><div><font face=
=3D"Courier New"><span style=3D"white-space:pre">			</span>dump_stack();</f=
ont></div><div><font face=3D"Courier New"><br></font></div><div><font face=
=3D"Courier New"><span style=3D"white-space:pre">			</span>return -EINVAL;<=
/font></div><div><font face=3D"Courier New"><span style=3D"white-space:pre"=
>		</span>}</font></div><div><font face=3D"Courier New"><br></font></div><d=
iv><font face=3D"Courier New"><span style=3D"white-space:pre">		</span>retu=
rn queue_work(shost-&gt;work_q, work);=C2=A0 =C2=A0 =C2=A0 &lt;--- Work ite=
m goes into Scsi_Host-&gt;work_q</font></div><div><font face=3D"Courier New=
"><span style=3D"white-space:pre">	</span>}</font></div><div><span style=3D=
"white-space:pre">	</span></div><div>Here we can see the scsi_host_dev_rele=
ase routine destroying the Scsi_Host-&gt;work_q</div><div><br></div><div><s=
pan style=3D"white-space:pre">	</span><font face=3D"Courier New">static voi=
d scsi_host_dev_release(struct device *dev)</font></div><div><font face=3D"=
Courier New"><span style=3D"white-space:pre">	</span>{</font></div><div><fo=
nt face=3D"Courier New"><span style=3D"white-space:pre">		</span>struct Scs=
i_Host *shost =3D dev_to_shost(dev);</font></div><div><font face=3D"Courier=
 New"><span style=3D"white-space:pre">		</span>struct device *parent =3D de=
v-&gt;parent;</font></div><div><font face=3D"Courier New"><br></font></div>=
<div><font face=3D"Courier New"><span style=3D"white-space:pre">		</span>sc=
si_proc_hostdir_rm(shost-&gt;hostt);</font></div><div><font face=3D"Courier=
 New"><br></font></div><div><font face=3D"Courier New"><span style=3D"white=
-space:pre">		</span>/* Wait for functions invoked through call_rcu(&amp;sh=
ost-&gt;rcu, ...) */</font></div><div><font face=3D"Courier New"><span styl=
e=3D"white-space:pre">		</span>rcu_barrier();</font></div><div><font face=
=3D"Courier New"><br></font></div><div><font face=3D"Courier New"><span sty=
le=3D"white-space:pre">		</span>if (shost-&gt;tmf_work_q)</font></div><div>=
<font face=3D"Courier New"><span style=3D"white-space:pre">			</span>destro=
y_workqueue(shost-&gt;tmf_work_q);</font></div><div><font face=3D"Courier N=
ew"><span style=3D"white-space:pre">		</span>if (shost-&gt;ehandler)</font>=
</div><div><font face=3D"Courier New"><span style=3D"white-space:pre">			</=
span>kthread_stop(shost-&gt;ehandler);</font></div><div><font face=3D"Couri=
er New"><span style=3D"white-space:pre">		</span>if (shost-&gt;work_q)</fon=
t></div><div><font face=3D"Courier New"><span style=3D"white-space:pre">			=
</span>destroy_workqueue(shost-&gt;work_q);=C2=A0 =C2=A0 =C2=A0<span style=
=3D"white-space:pre">		</span>&lt;--- Destroying Scsi_Host-&gt;work_q</font=
></div><div><span style=3D"white-space:pre">			</span></div><div><br></div>=
<div>I did some searching and couldn&#39;t locate a similar stack trace. Do=
es anyone know if this a known issue?=C2=A0</div><div><br></div><div>If not=
 a known issue, any ideas as to what would normally keep the Scsi_Host devi=
ce from being removed inline in this call stack? This happened on two hosts=
 with mniutes of each other after starting to disconnect from 2 targets. I =
believe the unbind session was kicked off from an iscsiadm command to termi=
nate the session but other than that nothing out of the ordinary was going =
on.=C2=A0</div><div><br></div><div>Thanks in advance,=C2=A0</div><div>Adam<=
/div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/54f8f86d-cced-402e-93c3-e63baa261ec0n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/54f8f86d-cced-402e-93c3-e63baa261ec0n%40googlegroups.com</a>.=
<br />

------=_Part_1339_201871052.1613764976249--

------=_Part_1338_2113264295.1613764976249--
