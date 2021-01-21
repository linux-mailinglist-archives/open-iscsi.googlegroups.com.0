Return-Path: <open-iscsi+bncBCRKJ2M45MFBBLFKU2AAMGQEP3UVKUY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E17F2FED7A
	for <lists+open-iscsi@lfdr.de>; Thu, 21 Jan 2021 15:52:30 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id t4sf1142464ooc.1
        for <lists+open-iscsi@lfdr.de>; Thu, 21 Jan 2021 06:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mojScYmgUiN/TEt4TpsPY3vivG4MfSn3SX1qDrtX2Qs=;
        b=QiY8N2VBTo+Pj+RwZObXZ2rVlAZOCO7q3lHf2+v+wb+c6lTh0767I9iwMzQDaHFNw4
         ZU7mHId13bgbI9jt4jm1HN/Bcgx/B9455d2ZAndP2qzLH+YPmXIDXgoQwvmFxWSV/Smz
         fz/6Y4vCt7hiimGMFUoe1RrSA4mfh/bLeoGzsH2cc063m8r0bNBU7Q/h6T3SQh5fwqBB
         FBECPLuNAkKkAmVCp3Rj2ZP+w9bV7PNg2WEsGhBozIaqLTiG0fwoVK7FiwYhFerVM1a9
         HE4dI+8/MEkJnD32gCHITqNhrJ0pjh/R/r+oIs6mfnTQ8Ye+DLNP6U7dx260DXXOaLiH
         ucqA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mojScYmgUiN/TEt4TpsPY3vivG4MfSn3SX1qDrtX2Qs=;
        b=FmwFRA2lHHDKAJ9TsU6GtwTNMjxan1jGVzEOMIrvu+lwt3e6YRd3nI0he+yWmfkS0P
         sv0XpbMdpYatZuINVHsSHfQxwjyrT82X969HTmHcP6It3ifWaVtyEtrwbIHu4QwKHcPO
         ZW/ilVc8gI03SgoAzeZ/f79cNu1u5RClQStOwv8fSNLfCqkZc/vttGx/aOx72GWZa2KQ
         kYMzFapRCxvQpypbBez9OhABUT6ShesOf4ZKSxy2nfnQx5WjhcSPPdrG8d9kgRgSIt+f
         O0aTJ1ZJFD+oi6BybE/LtVL77bsuIB8nzIPfCX1zBUrLzHo2RhZqfqEOHam2+1a/biUA
         7HxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mojScYmgUiN/TEt4TpsPY3vivG4MfSn3SX1qDrtX2Qs=;
        b=ApVeyqFK83otkIDiw5TqEc/oDwJX7EvsUpahZlPDobBMZXmpbWneY13X41E2Mj15Dm
         0/KhBp871FidL7LeyYBX1Fy0zYY/dpZ73pCWuUVDdn5qcUxIrE5t2w7wTIqexf3KScO8
         FOWJ55BoXBggx0McIVwWpZYS6FHmBuv4NpjFGxmUmXKzCyfQuGbQU7VV9Gj6ogFr/Q3E
         locS2coB41q6D9LJUoXytS/ZBak/g7OYySL+PjmmfQYZyUq0uRh6rTacihz4RmDplfWe
         qCYFdDDbwiI422g65EydgRGyl/wfKmcw0esgdkAA8LwJUWuCS9IgAqS+6e8XxwfUGReI
         EzIA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533FKFxsnvni1ISdi0IFj0L5iRGN50S6Ai2K31bVuKbPVWiJWbLV
	yQXVcVZcuik2JcVHOY6AFmE=
X-Google-Smtp-Source: ABdhPJwLVFY4yM0FvL/iuiU+++HYljCAq7a7HTE6W78l+X9DLThkC2HiY4OWg0/st/9Q37wRUGdl7Q==
X-Received: by 2002:aca:b657:: with SMTP id g84mr6396910oif.86.1611240749165;
        Thu, 21 Jan 2021 06:52:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:14a:: with SMTP id j10ls612710otp.4.gmail; Thu, 21
 Jan 2021 06:52:28 -0800 (PST)
X-Received: by 2002:a05:6830:3152:: with SMTP id c18mr10595337ots.191.1611240748430;
        Thu, 21 Jan 2021 06:52:28 -0800 (PST)
Date: Thu, 21 Jan 2021 06:52:27 -0800 (PST)
From: "ajhu...@gmail.com" <ajhutchin@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <eb5a3e8a-713d-4ae2-82bd-6c18afc5d6e8n@googlegroups.com>
Subject: Kernel panic: Hung task on unbind session
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7732_758826301.1611240747574"
X-Original-Sender: ajhutchin@gmail.com
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

------=_Part_7732_758826301.1611240747574
Content-Type: multipart/alternative; 
	boundary="----=_Part_7733_1188216954.1611240747574"

------=_Part_7733_1188216954.1611240747574
Content-Type: text/plain; charset="UTF-8"

Hi Folks,

I am looking at a kernel panic due to a hung task and could use some help 
understanding whether this is a known issue.  Kernel version is 4.14.63.

Here is an complete stack trace of the hung kworker task.

crash> bt 106700
PID: 106700  TASK: ffff885eb22ebe80  CPU: 8   COMMAND: "kworker/u32:0"
 #0 [ffffc900550ebab8] __schedule at ffffffff815f0b78
 #1 [ffffc900550ebb50] schedule at ffffffff815f1248
 #2 [ffffc900550ebb58] schedule_timeout at ffffffff815f4fe6
 #3 [ffffc900550ebbf8] wait_for_completion at ffffffff815f1cf0
 #4 [ffffc900550ebc48] flush_workqueue at ffffffff8108ec66
 #5 [ffffc900550ebce8] drain_workqueue at ffffffff8108ef84
 #6 [ffffc900550ebd10] destroy_workqueue at ffffffff81091ce5
 #7 [ffffc900550ebd30] scsi_host_dev_release at ffffffffa0095ced [scsi_mod]
 #8 [ffffc900550ebd48] device_release at ffffffff81453c90
 #9 [ffffc900550ebd68] kobject_put at ffffffff815d8130
#10 [ffffc900550ebd88] iscsi_session_release at ffffffffa0aebf88 
[scsi_transport_iscsi]
#11 [ffffc900550ebda8] device_release at ffffffff81453c90
#12 [ffffc900550ebdc8] kobject_put at ffffffff815d8130
#13 [ffffc900550ebde8] device_release at ffffffff81453c90
#14 [ffffc900550ebe08] kobject_put at ffffffff815d8130
#15 [ffffc900550ebe28] scsi_remove_target at ffffffffa00a3e92 [scsi_mod]
#16 [ffffc900550ebe70] __iscsi_unbind_session at ffffffffa0aecd8d 
[scsi_transport_iscsi]
#17 [ffffc900550ebe98] process_one_work at ffffffff8108f62a
#18 [ffffc900550ebed8] worker_thread at ffffffff8108f84b
#19 [ffffc900550ebf10] kthread at ffffffff8109536a
#20 [ffffc900550ebf50] ret_from_fork at ffffffff816001ef

After poking around in the kdump, I've discovered that the worker thread 
that called __iscsi_unbind_session did so for a work item that came from 
the same workqueue that is being destroyed at the top of the stack. My 
understanding of work queues is that this isn't allowed and will result in 
a hung task.   

Here we can see where the __iscsi_unbind_session work is queued to a SCSI 
work queue

static int
iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t 
*group)
{
.
.
.
case ISCSI_UEVENT_UNBIND_SESSION:
session = iscsi_session_lookup(ev->u.d_session.sid);
if (session)
scsi_queue_work(iscsi_session_to_shost(session),     <--- unbind work 
queued to scsi work queue
&session->unbind_work);
else
err = -EINVAL;
break;
Here we can see that this puts the work item onto Scsi_Host->work_q 

int scsi_queue_work(struct Scsi_Host *shost, struct work_struct *work)
{
if (unlikely(!shost->work_q)) {
shost_printk(KERN_ERR, shost,
"ERROR: Scsi host '%s' attempted to queue scsi-work, "
"when no workqueue created.\n", shost->hostt->name);
dump_stack();

return -EINVAL;
}

return queue_work(shost->work_q, work);      <--- Work item goes into 
Scsi_Host->work_q
}
Here we can see the scsi_host_dev_release routine destroying the 
Scsi_Host->work_q

static void scsi_host_dev_release(struct device *dev)
{
struct Scsi_Host *shost = dev_to_shost(dev);
struct device *parent = dev->parent;

scsi_proc_hostdir_rm(shost->hostt);

/* Wait for functions invoked through call_rcu(&shost->rcu, ...) */
rcu_barrier();

if (shost->tmf_work_q)
destroy_workqueue(shost->tmf_work_q);
if (shost->ehandler)
kthread_stop(shost->ehandler);
if (shost->work_q)
destroy_workqueue(shost->work_q);      <--- Destroying Scsi_Host->work_q

I did some searching and couldn't locate a similar stack trace. Does anyone 
know if this a known issue? 

If not a known issue, any ideas as to what would normally keep the 
Scsi_Host device from being removed inline in this call stack? This 
happened on two hosts with mniutes of each other after starting to 
disconnect from 2 targets. I believe the unbind session was kicked off from 
an iscsiadm command to terminate the session but other than that nothing 
out of the ordinary was going on. 

Thanks in advance, 
Adam

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/eb5a3e8a-713d-4ae2-82bd-6c18afc5d6e8n%40googlegroups.com.

------=_Part_7733_1188216954.1611240747574
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Folks,</div><div><br></div><div>I am looking at a kernel panic due =
to a hung task and could use some help understanding whether this is a know=
n issue.&nbsp; Kernel version is 4.14.63.</div><div><br></div><div>Here is =
an complete stack trace of the hung kworker task.</div><div><br></div><div>=
<font face=3D"Courier New">crash&gt; bt 106700</font></div><div><font face=
=3D"Courier New">PID: 106700&nbsp; TASK: ffff885eb22ebe80&nbsp; CPU: 8&nbsp=
; &nbsp;COMMAND: "kworker/u32:0"</font></div><div><font face=3D"Courier New=
">&nbsp;#0 [ffffc900550ebab8] __schedule at ffffffff815f0b78</font></div><d=
iv><font face=3D"Courier New">&nbsp;#1 [ffffc900550ebb50] schedule at fffff=
fff815f1248</font></div><div><font face=3D"Courier New">&nbsp;#2 [ffffc9005=
50ebb58] schedule_timeout at ffffffff815f4fe6</font></div><div><font face=
=3D"Courier New">&nbsp;#3 [ffffc900550ebbf8] wait_for_completion at fffffff=
f815f1cf0</font></div><div><font face=3D"Courier New">&nbsp;#4 [ffffc900550=
ebc48] flush_workqueue at ffffffff8108ec66</font></div><div><font face=3D"C=
ourier New">&nbsp;#5 [ffffc900550ebce8] drain_workqueue at ffffffff8108ef84=
</font></div><div><font face=3D"Courier New">&nbsp;#6 [ffffc900550ebd10] de=
stroy_workqueue at ffffffff81091ce5</font></div><div><font face=3D"Courier =
New">&nbsp;#7 [ffffc900550ebd30] scsi_host_dev_release at ffffffffa0095ced =
[scsi_mod]</font></div><div><font face=3D"Courier New">&nbsp;#8 [ffffc90055=
0ebd48] device_release at ffffffff81453c90</font></div><div><font face=3D"C=
ourier New">&nbsp;#9 [ffffc900550ebd68] kobject_put at ffffffff815d8130</fo=
nt></div><div><font face=3D"Courier New">#10 [ffffc900550ebd88] iscsi_sessi=
on_release at ffffffffa0aebf88 [scsi_transport_iscsi]</font></div><div><fon=
t face=3D"Courier New">#11 [ffffc900550ebda8] device_release at ffffffff814=
53c90</font></div><div><font face=3D"Courier New">#12 [ffffc900550ebdc8] ko=
bject_put at ffffffff815d8130</font></div><div><font face=3D"Courier New">#=
13 [ffffc900550ebde8] device_release at ffffffff81453c90</font></div><div><=
font face=3D"Courier New">#14 [ffffc900550ebe08] kobject_put at ffffffff815=
d8130</font></div><div><font face=3D"Courier New">#15 [ffffc900550ebe28] sc=
si_remove_target at ffffffffa00a3e92 [scsi_mod]</font></div><div><font face=
=3D"Courier New">#16 [ffffc900550ebe70] __iscsi_unbind_session at ffffffffa=
0aecd8d [scsi_transport_iscsi]</font></div><div><font face=3D"Courier New">=
#17 [ffffc900550ebe98] process_one_work at ffffffff8108f62a</font></div><di=
v><font face=3D"Courier New">#18 [ffffc900550ebed8] worker_thread at ffffff=
ff8108f84b</font></div><div><font face=3D"Courier New">#19 [ffffc900550ebf1=
0] kthread at ffffffff8109536a</font></div><div><font face=3D"Courier New">=
#20 [ffffc900550ebf50] ret_from_fork at ffffffff816001ef</font></div><div><=
br></div><div>After poking around in the kdump, I've discovered that the wo=
rker thread that called __iscsi_unbind_session did so for a work item that =
came from the same workqueue that is being destroyed at the top of the stac=
k. My understanding of work queues is that this isn't allowed and will resu=
lt in a hung task.&nbsp; &nbsp;</div><div><br></div><div>Here we can see wh=
ere the __iscsi_unbind_session work is queued to a SCSI work queue</div><di=
v><br></div><div><font face=3D"Courier New"><span style=3D"white-space:pre"=
>	</span>static int</font></div><div><font face=3D"Courier New"><span style=
=3D"white-space:pre">	</span>iscsi_if_recv_msg(struct sk_buff *skb, struct =
nlmsghdr *nlh, uint32_t *group)</font></div><div><font face=3D"Courier New"=
><span style=3D"white-space:pre">	</span>{</font></div><div><font face=3D"C=
ourier New"><span style=3D"white-space:pre">	</span>.</font></div><div><fon=
t face=3D"Courier New"><span style=3D"white-space:pre">	</span>.</font></di=
v><div><font face=3D"Courier New"><span style=3D"white-space:pre">	</span>.=
</font></div><div><font face=3D"Courier New"><span style=3D"white-space:pre=
">		</span>case ISCSI_UEVENT_UNBIND_SESSION:</font></div><div><font face=3D=
"Courier New"><span style=3D"white-space:pre">			</span>session =3D iscsi_s=
ession_lookup(ev-&gt;u.d_session.sid);</font></div><div><font face=3D"Couri=
er New"><span style=3D"white-space:pre">			</span>if (session)</font></div>=
<div><font face=3D"Courier New"><span style=3D"white-space:pre">				</span>=
scsi_queue_work(iscsi_session_to_shost(session),&nbsp; &nbsp; &nbsp;&lt;---=
 unbind work queued to scsi work queue</font></div><div><font face=3D"Couri=
er New"><span style=3D"white-space:pre">						</span>&amp;session-&gt;unbin=
d_work);</font></div><div><font face=3D"Courier New"><span style=3D"white-s=
pace:pre">			</span>else</font></div><div><font face=3D"Courier New"><span =
style=3D"white-space:pre">				</span>err =3D -EINVAL;</font></div><div><fon=
t face=3D"Courier New"><span style=3D"white-space:pre">			</span>break;</fo=
nt></div><div><span style=3D"white-space:pre"><font face=3D"Courier New">		=
</font></span></div><div>Here we can see that this puts the work item onto =
Scsi_Host-&gt;work_q&nbsp;</div><div><br></div><div><font face=3D"Courier N=
ew"><span style=3D"white-space:pre">	</span>int scsi_queue_work(struct Scsi=
_Host *shost, struct work_struct *work)</font></div><div><font face=3D"Cour=
ier New"><span style=3D"white-space:pre">	</span>{</font></div><div><font f=
ace=3D"Courier New"><span style=3D"white-space:pre">		</span>if (unlikely(!=
shost-&gt;work_q)) {</font></div><div><font face=3D"Courier New"><span styl=
e=3D"white-space:pre">			</span>shost_printk(KERN_ERR, shost,</font></div><=
div><font face=3D"Courier New"><span style=3D"white-space:pre">				</span>"=
ERROR: Scsi host '%s' attempted to queue scsi-work, "</font></div><div><fon=
t face=3D"Courier New"><span style=3D"white-space:pre">				</span>"when no =
workqueue created.\n", shost-&gt;hostt-&gt;name);</font></div><div><font fa=
ce=3D"Courier New"><span style=3D"white-space:pre">			</span>dump_stack();<=
/font></div><div><font face=3D"Courier New"><br></font></div><div><font fac=
e=3D"Courier New"><span style=3D"white-space:pre">			</span>return -EINVAL;=
</font></div><div><font face=3D"Courier New"><span style=3D"white-space:pre=
">		</span>}</font></div><div><font face=3D"Courier New"><br></font></div><=
div><font face=3D"Courier New"><span style=3D"white-space:pre">		</span>ret=
urn queue_work(shost-&gt;work_q, work);&nbsp; &nbsp; &nbsp; &lt;--- Work it=
em goes into Scsi_Host-&gt;work_q</font></div><div><font face=3D"Courier Ne=
w"><span style=3D"white-space:pre">	</span>}</font></div><div><span style=
=3D"white-space:pre">	</span></div><div>Here we can see the scsi_host_dev_r=
elease routine destroying the Scsi_Host-&gt;work_q</div><div><br></div><div=
><span style=3D"white-space:pre">	</span><font face=3D"Courier New">static =
void scsi_host_dev_release(struct device *dev)</font></div><div><font face=
=3D"Courier New"><span style=3D"white-space:pre">	</span>{</font></div><div=
><font face=3D"Courier New"><span style=3D"white-space:pre">		</span>struct=
 Scsi_Host *shost =3D dev_to_shost(dev);</font></div><div><font face=3D"Cou=
rier New"><span style=3D"white-space:pre">		</span>struct device *parent =
=3D dev-&gt;parent;</font></div><div><font face=3D"Courier New"><br></font>=
</div><div><font face=3D"Courier New"><span style=3D"white-space:pre">		</s=
pan>scsi_proc_hostdir_rm(shost-&gt;hostt);</font></div><div><font face=3D"C=
ourier New"><br></font></div><div><font face=3D"Courier New"><span style=3D=
"white-space:pre">		</span>/* Wait for functions invoked through call_rcu(&=
amp;shost-&gt;rcu, ...) */</font></div><div><font face=3D"Courier New"><spa=
n style=3D"white-space:pre">		</span>rcu_barrier();</font></div><div><font =
face=3D"Courier New"><br></font></div><div><font face=3D"Courier New"><span=
 style=3D"white-space:pre">		</span>if (shost-&gt;tmf_work_q)</font></div><=
div><font face=3D"Courier New"><span style=3D"white-space:pre">			</span>de=
stroy_workqueue(shost-&gt;tmf_work_q);</font></div><div><font face=3D"Couri=
er New"><span style=3D"white-space:pre">		</span>if (shost-&gt;ehandler)</f=
ont></div><div><font face=3D"Courier New"><span style=3D"white-space:pre">	=
		</span>kthread_stop(shost-&gt;ehandler);</font></div><div><font face=3D"C=
ourier New"><span style=3D"white-space:pre">		</span>if (shost-&gt;work_q)<=
/font></div><div><font face=3D"Courier New"><span style=3D"white-space:pre"=
>			</span>destroy_workqueue(shost-&gt;work_q);&nbsp; &nbsp; &nbsp;<span st=
yle=3D"white-space:pre">		</span>&lt;--- Destroying Scsi_Host-&gt;work_q</f=
ont></div><div><span style=3D"white-space:pre">			</span></div><div><br></d=
iv><div>I did some searching and couldn't locate a similar stack trace. Doe=
s anyone know if this a known issue?&nbsp;</div><div><br></div><div>If not =
a known issue, any ideas as to what would normally keep the Scsi_Host devic=
e from being removed inline in this call stack? This happened on two hosts =
with mniutes of each other after starting to disconnect from 2 targets. I b=
elieve the unbind session was kicked off from an iscsiadm command to termin=
ate the session but other than that nothing out of the ordinary was going o=
n.&nbsp;</div><div><br></div><div>Thanks in advance,&nbsp;</div><div>Adam</=
div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/eb5a3e8a-713d-4ae2-82bd-6c18afc5d6e8n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/eb5a3e8a-713d-4ae2-82bd-6c18afc5d6e8n%40googlegroups.com</a>.=
<br />

------=_Part_7733_1188216954.1611240747574--

------=_Part_7732_758826301.1611240747574--
